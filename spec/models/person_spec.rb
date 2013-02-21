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

require 'spec_helper'

describe Person do
  it "should be valid by default" do
    person = create(:person)
    person.should be_valid
  end

  describe "name" do
    it "should be the first name and last name" do
      person = create(:person, :first_name => "Joerg", :last_name => "Diekmann")
      person.name.should == "Joerg Diekmann"
    end
    it "should be titleized" do
      person = create(:person, :first_name => "joerg", :last_name => "DiekmanN")
      person.name.should == "Joerg Diekmann"
    end
  end
end
