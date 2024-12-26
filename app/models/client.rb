class Client < ApplicationRecord
  belongs_to :client_file

  validates :cpf, presence: true, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    ["address", "city", "cpf", "created_at", "id", "name", "client_file_id", "phone", "state", "updated_at", "zip_code"]
  end
end
