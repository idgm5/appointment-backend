# rubocop:disable Naming/AccessorMethodName

class Appointment < ApplicationRecord
  belongs_to :bike
  
  def self.get_all
    Appointment.all
  end
end

# rubocop:enable Naming/AccessorMethodName
