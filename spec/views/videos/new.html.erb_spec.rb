require 'spec_helper'

describe "/videos/new.html.erb" do
  include VideosHelper

  before(:each) do
    assigns[:video] = stub_model(Video,
      :new_record? => true,
      :youtube_url => "value for youtube_url",
      :vimeo_url => "value for vimeo_url"
    )
  end

  it "renders new video form" do
    render

    response.should have_tag("form[action=?][method=post]", videos_path) do
      with_tag("input#video_youtube_url[name=?]", "video[youtube_url]")
      with_tag("input#video_vimeo_url[name=?]", "video[vimeo_url]")
    end
  end
end
