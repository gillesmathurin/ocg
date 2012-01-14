class Image < ActiveRecord::Base
  belongs_to :gallery
  has_attached_file :photo, :styles => { :sthumb => "90x90>", :thumb => "155x155>", :large => "500x500>" }
end
