class ClientStatisticsJob
  include Sidekiq::Job

  def perform
    Rails.logger.info "Starting ClientStatisticsJob"

    # Registra o total de clientes
    total_clients = Client.count
    Rails.logger.info "Total Clients: #{total_clients}"

    # Registra os telefones duplicados
    duplicate_phones = Client.group(:phone).having('count(phone) > 1').count
    Rails.logger.info "Duplicate Phones: #{duplicate_phones.inspect}"

    # Registra os clientes por estado
    clients_by_state = Client.group(:state).count
    Rails.logger.info "Clients by State: #{clients_by_state.inspect}"

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
