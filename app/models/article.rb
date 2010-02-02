class Article < ActiveRecord::Base
  # mount_uploader :photo, PhotoUploader
  named_scope :recent_articles, :order => "created_at desc", :limit => 4  
end
