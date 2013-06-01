# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feedback do
    title "MyString"
    user_id 1
    content "MyText"
  end
end
