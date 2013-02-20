require 'spec_helper'

feature "View profile feature" do
  background do
    @person = Person.create!(
      first_name: "Jon", 
      last_name: "Doe", 
      email: "jon@spam.com", 
      phone_number: "0720000000", 
      video_embed_code: "<div>blah</div>",
      description: "Long description .....")
  end

  scenario "View the profile page of a person" do
    visit person_path(@person)
    page.should have_content('jon@spam.com')
    page.should have_css(".video")
    page.should have_content('0720000000')
    page.should have_content("Long description .....")
  end

end