FactoryBot.define do
  factory :message do
    readed {false}
    created_at { Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
    updated_at { Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
  end
end