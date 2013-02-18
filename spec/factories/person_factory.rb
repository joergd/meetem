FactoryGirl.define do

  factory :person do
    first_name "Jon"
    last_name "Doe"
    sequence(:email) { |n| "user#{n}@spam.com" }
  end

end