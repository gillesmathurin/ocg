require 'spec_helper'

describe Partenaire do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :adresse => "value for adresse",
      :cp => "value for cp",
      :ville => "value for ville",
      :telephone => "value for telephone",
      :fax => "value for fax",
      :email => "value for email",
      :weburl => "value for weburl",
      :logo_file_name => "value for logo_file_name",
      :logo_file_size => 1,
      :logo_content_type => "value for logo_content_type",
      :logo_updated_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Partenaire.create!(@valid_attributes)
  end
end
