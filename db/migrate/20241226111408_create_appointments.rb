class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
