# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :progress do
    task ""
    starts "2012-06-25 12:56:50"
    ends "2012-06-25 12:56:50"
    effort 1
    subject ""
  end
end
