FactoryBot.define do
  factory :expense do
    author { nil }
    name { "MyString" }
    amount { "9.99" }
    created_at { "2020-08-04 19:09:10" }
  end
end
