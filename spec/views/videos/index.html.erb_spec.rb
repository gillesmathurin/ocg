require 'spec_helper'

describe "/videos/index.html.erb" do
  include VideosHelper

  before(:each) do
    assigns[:videos] = [
      stub_model(Video,
        :youtube_url => "value for youtube_url",
        :vimeo_url => "value for vimeo_url"
      ),
      stub_model(Video,
        :youtube_url => "value for youtube_url",
        :vimeo_url => "value for vimeo_url"
      )
    ]
  end

  it "renders a list of videos" do
    render
    response.should have_tag("tr>td", "value for youtube_url".to_s, 2)
    response.should have_tag("tr>td", "value for vimeo_url".to_s, 2)
  end
end
