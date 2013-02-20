require 'spec_helper'

describe "people/show.html.erb" do
  before :each do
    assign(:person, create(:person, first_name: "Jon", last_name: "Doe", email: "jon@spam.com", phone_number: "0720000000"))
  end
  it "should display the email as a mailto link" do
    render
    rendered.should have_link("jon@spam.com")
  end
  describe "video" do
    it "should display a video embed code if we have a video" do
      assign(:person, create(:person, :video_embed_code => "<div>blah</div>"))
      render
      rendered.should have_css(".video")
    end
    it "should not display a video embed code if we don't have a video" do
      assign(:person, create(:person, video_embed_code: nil))
      render
      rendered.should_not have_css(".video")
    end
    it "should display raw HTML for the embed code" do
      assign(:person, create(:person, video_embed_code: "<div class='rspec'>blah</div>"))
      render
      rendered.should have_selector(".video div.rspec")
    end
  end
end
