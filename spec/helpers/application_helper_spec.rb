require "spec_helper"

describe ApplicationHelper do
  describe "#formatted_date(date)" do
    context "when the date has a time different than 00:00" do
      date = Time.parse("2010-02-08 15:00:00")
      content = helper.formatted_date(date)
      content.should == "08/02/2010 15:00"
    end
    
    context "when the date has a time equal to 00:00" do
      date = Time.parse("2010-02-08 00:00:00")
      content = helper.formatted_date(date)
      content.should == "08/02/2010"      
    end
  end
end