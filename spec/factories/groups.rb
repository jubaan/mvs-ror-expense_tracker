FactoryBot.define do
  factory :group do
    name { Faker::Commerce.department(max: 1) }
    icon { 'icon' }
  end
end
