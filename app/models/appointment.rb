# rubocop:disable Naming/AccessorMethodName

class Appointment < ApplicationRecord
  def self.get_all
    Appointment.all
  end
end

# rubocop:enable Naming/AccessorMethodName
