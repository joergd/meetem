# == Schema Information
#
# Table name: people
#
#  id               :integer          not null, primary key
#  email            :string(255)
#  first_name       :string(255)
#  last_name        :string(255)
#  description      :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  video_embed_code :text
#  phone_number     :string(255)
#

FactoryGirl.define do

  factory :person do
    first_name "Jon"
    last_name "Doe"
    sequence(:email) { |n| "user#{n}@spam.com" }
    phone_number "0720000000"
    description "Long description ....."
  end

end
