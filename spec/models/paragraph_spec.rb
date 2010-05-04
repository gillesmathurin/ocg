require 'spec_helper'

describe Paragraph do
  before(:each) do
    @valid_attributes = {
      :content => "value for content",
      :photo1_file_name => "value for photo1_file_name",
      :photo1_content_type => "value for photo1_content_type",
      :photo1_file_size => 1,
      :photo1_updated_at => Time.now,
      :photo1_file_name => "value for photo1_file_name",
      :photo2_content_type => "value for photo2_content_type",
      :photo2_file_size => 1,
      :photo2_updated_at => Time.now,
      :photo3_file_name => "value for photo3_file_name",
      :photo3_content_type => "value for photo3_content_type",
      :photo3_file_size => 1,
      :photo3_updated_at => Time.now,
      :article_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Paragraph.create!(@valid_attributes)
  end
end
