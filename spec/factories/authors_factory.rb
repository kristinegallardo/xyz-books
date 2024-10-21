FactoryBot.define do
  factory :author do
    first_name { Faker::Book.author }
    last_name { Faker::Book.author }
  end
end
