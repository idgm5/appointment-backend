# rubocop:disable Style/MixinUsage;

include ActionDispatch::TestProcess
FactoryBot.define do
  factory :appointment do
    model { 'test' }
    city { Faker::Address.city }
    date { Faker::Date.forward(days: 23) }
    user { Faker::Name.name }
    bike_id { create(:bike).id }
  end
end

# rubocop:enable Style/MixinUsage;
