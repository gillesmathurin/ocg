class Image < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
