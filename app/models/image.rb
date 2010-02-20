class Image < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "175x175>", :large => "500x500>" }
end
