class Image < ActiveRecord::Base
  has_attached_file :photo, :styles => { :sthumb => "90x90>", :thumb => "155x155>", :large => "500x500>" }
end
