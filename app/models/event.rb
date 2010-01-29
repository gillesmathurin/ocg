class Event < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  named_scope :next_4, :conditions => ['start_date > ?', Date.today], :limit => 4  
end
