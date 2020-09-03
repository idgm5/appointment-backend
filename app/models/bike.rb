# rubocop:disable Naming/AccessorMethodName

class Bike < ApplicationRecord
  def self.get_all
    Bike.all
  end
end

# rubocop:enable Naming/AccessorMethodName
