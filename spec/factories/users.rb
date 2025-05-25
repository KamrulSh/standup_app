FactoryBot.define do
  factory :user do
    name { 'MyString' }
    email { 'email@test.com' }
    password { '123456' }
  end
end
