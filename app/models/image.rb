class Image < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "200x200>", :large => "800x800>" }
end
