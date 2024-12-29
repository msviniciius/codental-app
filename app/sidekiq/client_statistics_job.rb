class ClientStatisticsJob
  include Sidekiq::Job

  def perform
    total_clients = Client.count

    duplicate_phones = Client.group(:phone).having('count(phone) > 1').count
    duplicate_phones = duplicate_phones.is_a?(Hash) ? duplicate_phones : {}

    clients_by_state = Client.group(:state).count
    clients_by_state = clients_by_state.is_a?(Hash) ? clients_by_state : {}

    # Envia os dados para o canal do ActionCable
    begin
      ActionCable.server.broadcast 'clients_statistics_channel', {
        total_clients: total_clients,
        duplicate_phones: duplicate_phones,
        clients_by_state: clients_by_state
      }
    rescue => e
      Rails.logger.error "Erro ao enviar para ActionCable: #{e.message}"
      raise e
    end
  end
end
