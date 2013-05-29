# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :babycard do
    name "MyString"
    gender 1
    birthday "MyString"
    blood_type "MyString"
    father_phone "MyString"
    mather_phone "MyString"
    record "MyString"
    note "MyText"
    color "MyString"
  end
end
