require 'rails_helper'

RSpec.describe Bike, type: :model do
  context 'Validations for appointments' do
    let(:bike) { FactoryBot.create :bike }
    let(:appointment) { FactoryBot.create :appointment }
    before :each do
      @appointment = appointment
      @appointment_new = Appointment.create(model: "test", date: "2020-04-10", user: "test user",
                                            city: "chicago", bike_id: bike)
    end

    it 'should be valid' do
      expect(@appointment).to be_valid
    end

    it 'should be present' do
      expect(@appointment_new).to be_present
    end
  end

  context 'Association with Appointments table' do
    it 'belongs to bike' do
      assc = Appointment.reflect_on_association(:bike)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
