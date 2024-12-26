class CreateClientFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :client_files do |t|
      t.string :month
      t.string :year
      t.string :file

      t.timestamps
    end
  end
end
