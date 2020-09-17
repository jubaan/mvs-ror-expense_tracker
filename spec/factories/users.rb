FactoryBot.define do
  factory :user, class: 'User' do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { 123_456_789 }
  end
end
