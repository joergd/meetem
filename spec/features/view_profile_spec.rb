require 'spec_helper'

feature "View profile feature" do
  background do
    @person = create(:person, :email => "jon@spam.com", :video_embed_code => "<div>blah</div>")
  end

  scenario "View the profile page of a person" do
    visit person_path(@person)
    page.should have_content('jon@spam.com')
    page.should have_css(".video")
  end

end