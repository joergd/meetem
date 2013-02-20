FactoryGirl.define do

  factory :person do
    first_name "Jon"
    last_name "Doe"
    sequence(:email) { |n| "user#{n}@spam.com" }
    phone_number "0720000000"
    description "Long description ....."
  end

end