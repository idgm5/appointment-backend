# rubocop:disable Naming/AccessorMethodName

class Appointment < ApplicationRecord
  belongs_to :bike

  def self.get_all
    Appointment.all
  end

  validates :model, presence: true
  validates :city, presence: true
  validates :date, presence: true
  validates :user, presence: true
  validates :bike_id, presence: true
end

# rubocop:enable Naming/AccessorMethodName
