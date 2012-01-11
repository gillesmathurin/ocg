require "spec_helper"

describe ApplicationHelper do
  
  describe "#formatted_date(date)" do
    pending("Find out why this causes a method missing error") do
      date = Time.parse("2010-02-08 15:00:00")
      helper.formatted_date(date).should == "08/02/2010 15:00"
      date = Time.parse("2010-02-08 00:00:00")
      helper.formatted_date(date).should == "08/02/2010"            
    end
  end
  
end