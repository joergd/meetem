require 'spec_helper'

feature "List profiles feature" do
  background do
    @person1 = create(:person, :first_name => "Jon", :last_name => "Doe")
    @person2 = create(:person, :first_name => "Franz", :last_name => "Kafka")
  end

  scenario "View the list of people" do
    visit people_path
    page.should have_link('Jon Doe')
    page.should have_link('Franz Kafka')
  end

end