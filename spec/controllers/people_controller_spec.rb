require 'spec_helper'

describe PeopleController do

  describe "GET 'show'" do
    before :each do
      @person = create(:person)
    end
    it "returns http success" do
      get 'show', :id => @person.to_param
      response.should be_success
    end
    it "should assign a person" do
      get :show, :id => @person.to_param
      assigns[:person].should == @person
    end
  end

  describe "GET 'index'" do
    before :each do
      2.times do
        create(:person)
      end
    end
    it "returns http success" do
      get :index
      response.should be_success
    end
    it "should assign the people" do
      get :index
      assigns[:people].length.should == 2
    end
  end

end
