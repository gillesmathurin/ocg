require 'spec_helper'

describe Event do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description",
      :place => "value for place",
      :start_date => Time.now,
      :end_date => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Event.create!(@valid_attributes)
  end
end

describe Event, ".next_10" do
  it "find the next 4 events" do
    @events = Event.next_10
    @events.should have_at_most(4).records
  end
end
