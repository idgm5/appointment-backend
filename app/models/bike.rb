# rubocop:disable Naming/AccessorMethodName

class Bike < ApplicationRecord
  has_many :appointments
  
  def self.get_all
    Bike.all
  end
end

# rubocop:enable Naming/AccessorMethodName
