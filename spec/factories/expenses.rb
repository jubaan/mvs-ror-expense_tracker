FactoryBot.define do
  factory :expense do
    name { Faker::Commerce.product_name }
    amount { Faker::Commerce.price }
  end
end
