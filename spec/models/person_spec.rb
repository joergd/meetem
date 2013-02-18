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
