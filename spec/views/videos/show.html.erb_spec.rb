require 'spec_helper'

describe "/videos/show.html.erb" do
  include VideosHelper
  before(:each) do
    assigns[:video] = @video = stub_model(Video,
      :youtube_url => "value for youtube_url",
      :vimeo_url => "value for vimeo_url"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ youtube_url/)
    response.should have_text(/value\ for\ vimeo_url/)
  end
end
