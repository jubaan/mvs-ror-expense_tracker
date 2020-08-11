FactoryBot.define do
  factory :group do
    name { Faker::Commerce.department }
    icon { 'icon' }
  end
end
