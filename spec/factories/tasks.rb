# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    daadline "2012-06-24"
    priority 1
    completion "2012-06-24"
    status 1
    focus ""
    goal ""
  end
end
