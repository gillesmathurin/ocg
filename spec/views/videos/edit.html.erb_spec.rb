require 'spec_helper'

describe "/videos/edit.html.erb" do
  include VideosHelper

  before(:each) do
    assigns[:video] = @video = stub_model(Video,
      :new_record? => false,
      :youtube_url => "value for youtube_url",
      :vimeo_url => "value for vimeo_url"
    )
  end

  it "renders the edit video form" do
    render

    response.should have_tag("form[action=#{video_path(@video)}][method=post]") do
      with_tag('input#video_youtube_url[name=?]', "video[youtube_url]")
      with_tag('input#video_vimeo_url[name=?]', "video[vimeo_url]")
    end
  end
end
