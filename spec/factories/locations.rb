# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    name "MyString"
    lat "MyString"
    lng "MyString"
    phone "MyString"
    address "MyString"
    user_comment "MyString"
    description "MyText"
  end
end
