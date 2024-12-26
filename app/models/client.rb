class Client < ApplicationRecord
  belongs_to :client_file, optional: true

  validates :name, :cpf, :phone, :address, :city, :state, :zip_code, presence: true
  validates :cpf, presence: true, uniqueness: true
  validate :cpf_valido

  def self.ransackable_attributes(auth_object = nil)
    ["address", "city", "cpf", "created_at", "id", "name", "client_file_id", "phone", "state", "updated_at", "zip_code"]
  end

  private

  def cpf_valido
    unless CPF.valid?(cpf)
      errors.add(:cpf, 'é inválido')
    end
  end
end
