# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :page do
    name { Faker::Lorem.sentence }
  end
end
