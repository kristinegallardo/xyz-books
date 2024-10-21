FactoryBot.define do
  factory :book do
    association :publisher

    title { Faker::Book.title }
    isbn_13 { Faker::Code.isbn(base: 13) }
    price { Faker::Commerce.price(range: 500..5000.0) }
    publication_year { '2000' }
  end
end
