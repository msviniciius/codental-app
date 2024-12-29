class ClientStatisticsJob
  include Sidekiq::Job

  def perform
    total_clients = Client.count
    duplicate_phones = Client.group(:phone).having('count(phone) > 1').count
    clients_by_state = Client.group(:state).count

    # Adicione validações para garantir que os dados sejam do tipo esperado
    Rails.logger.info "Duplicate Phones: #{duplicate_phones.inspect}"
    Rails.logger.info "Clients by State: #{clients_by_state.inspect}"

    # Se duplicate_phones ou clients_by_state forem vazios, certifique-se de que os dados são um hash
    duplicate_phones = {} if duplicate_phones.nil? || !duplicate_phones.is_a?(Hash)
    clients_by_state = {} if clients_by_state.nil? || !clients_by_state.is_a?(Hash)

    # Envia os dados para o canal do ActionCable
    ActionCable.server.broadcast 'clients_statistics_channel', {
      total_clients: total_clients,
      duplicate_phones: duplicate_phones,
      clients_by_state: clients_by_state
    }
  end
end
