require 'spec_helper'

describe Video do
  before(:each) do
    @valid_attributes = {
      :youtube_url => "value for youtube_url",
      :vimeo_url => "value for vimeo_url"
    }
  end

  it "should create a new instance given valid attributes" do
    Video.create!(@valid_attributes)
  end
end
