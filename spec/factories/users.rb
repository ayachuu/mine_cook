FactoryBot.define do
  factory :user do
    nickname              { "ayataka" }
    email                 { Faker::Internet.free_email }
    password              { 'asd1234' }
    password_confirmation { password }
  end
end
