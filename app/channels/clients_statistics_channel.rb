class ClientsStatisticsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'clients_statistics_channel'
  end

  def unsubscribed
  end
end
