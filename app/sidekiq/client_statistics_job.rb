class ClientStatisticsJob
  include Sidekiq::Job

  def perform
    Rails.logger.info "Starting ClientStatisticsJob"

    total_clients = Client.count

    # Verifica e loga o tipo de 'duplicate_phones'
    duplicate_phones = Client.group(:phone).having('count(phone) > 1').count
    Rails.logger.info "Duplicate Phones: #{duplicate_phones.inspect}"
    Rails.logger.info "Type of duplicate_phones: #{duplicate_phones.class}"

    # Verifica e loga o tipo de 'clients_by_state'
    clients_by_state = Client.group(:state).count
    Rails.logger.info "Clients by State: #{clients_by_state.inspect}"
    Rails.logger.info "Type of clients_by_state: #{clients_by_state.class}"

    sleep(1)

    # Envia os dados para o canal do ActionCable
    ActionCable.server.broadcast 'clients_statistics_channel', {
      total_clients: total_clients,
      duplicate_phones: duplicate_phones,
      clients_by_state: clients_by_state
    }

    Rails.logger.info "ClientStatisticsJob finished"
  end
end
