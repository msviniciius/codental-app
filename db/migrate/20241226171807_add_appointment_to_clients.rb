class AddAppointmentToClients < ActiveRecord::Migration[8.0]
  def change
    add_reference :clients, :appointment, foreign_key: true
  end
end
