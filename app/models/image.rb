class Image < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "200x200>" }
end
