require 'spec_helper'

describe Photo do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :photo => "value for photo",
      :date => Date.today
    }
  end

  it "should create a new instance given valid attributes" do
    Photo.create!(@valid_attributes)
  end
end
