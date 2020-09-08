require 'rails_helper'

RSpec.describe Bike, type: :model do
  context 'Validations for bike' do
    let(:bike) { FactoryBot.create :bike }
    before :each do
      @bike = bike
      @bike_new = Bike.create(modelName: 'test', finance: 12, option: 12, total: 12, duration: 12,
                              description: 'test desc', picture: 'picture.png')
    end

    it 'should be valid' do
      expect(@bike).to be_valid
    end

    it 'should be present' do
      expect(@bike_new).to be_present
    end
  end

  context 'Association with bikes table' do
    it 'has many appointments' do
      assc = Bike.reflect_on_association(:appointments)
      expect(assc.macro).to eq :has_many
    end
  end
end
