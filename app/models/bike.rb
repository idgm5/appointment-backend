# rubocop:disable Naming/AccessorMethodName

class Bike < ApplicationRecord
  has_many :appointments

  def self.get_all
    Bike.all
  end

  validates :modelName, presence: true
  validates :finance, presence: true
  validates :option, presence: true
  validates :total, presence: true
  validates :duration, presence: true
  validates :picture, presence: true
end

# rubocop:enable Naming/AccessorMethodName
