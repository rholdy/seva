# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :static_page do
    home "MyString"
    about "MyString"
    contact "MyString"
    pricing "MyString"
  end
end
