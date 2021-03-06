require 'rails_helper'

RSpec.describe Api::V1::AppointmentsController, type: :controller do
  describe 'Test JSON format' do
    it 'returns a successful response' do
      FactoryBot.create :appointment
      get :index, format: :json
      expect(response).to have_http_status(200)
    end

    it 'returns five appointments in JSON format' do
      FactoryBot.create_list(:appointment, 5)
      get :index, format: :json
      parsed_response = JSON.parse(response.body)
      expect(parsed_response.length).to eq(5)
    end
  end
end
