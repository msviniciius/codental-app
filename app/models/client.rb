class Client < ApplicationRecord
  belongs_to :client_file, optional: true
  belongs_to :appointment, optional: true, dependent: :destroy

  validates :name, :cpf, :phone, :address, :city, :state, :zip_code, presence: true
  validates :cpf, presence: true, uniqueness: true
  validate :cpf_valido

  after_create :enqueue_statistics_job
  after_update :enqueue_statistics_job
  after_destroy :enqueue_statistics_job

  def self.ransackable_attributes(auth_object = nil)
    ["address", "city", "cpf", "created_at", "id", "name", "client_file_id", "phone", "state", "updated_at", "zip_code"]
  end

  private

  def enqueue_statistics_job
    ClientStatisticsJob.perform_async
  end

  def cpf_valido
    unless CPF.valid?(cpf)
      errors.add(:cpf, 'é inválido')
    end
  end
end
