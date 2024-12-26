class Appointment < ApplicationRecord
  has_many :clients

  validates :start_time, :end_time, presence: true
  validate :no_time_conflict

  private

  # verificar conflito de horário
  def no_time_conflict
    # if Appointment.exists?("(start_time, end_time) OVERLAPS (?, ?)", start_time, end_time)
    #   errors.add(:base, 'Este compromisso tem conflito de horário com outro compromisso.')
    # end
  end
end
