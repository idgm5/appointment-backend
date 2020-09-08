# rubocop:disable Lint/UselessAssignment;

FactoryBot.define do
  factory :bike do
    modelName { 'test' }
    finance { Faker::Number.between(from: 0, to: 10) }
    option { Faker::Number.between(from: 0, to: 10) }
    total { Faker::Number.between(from: 0, to: 10) }
    duration { Faker::Number.between(from: 0, to: 10) }
    description do
      Faker::Lorem.sentence(word_count: word_count = 4,
                            supplemental: supplemental = false, random_words_to_add: random_words_to_add = 0)
    end
    picture { Faker::Name.name }
  end
end

# rubocop:enable Lint/UselessAssignment;
