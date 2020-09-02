class Appointment < ApplicationRecord
  def self.get_all
    Appointment.all
  end
end
