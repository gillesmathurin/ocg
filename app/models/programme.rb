class Programme < ActiveRecord::Base
  has_attached_file :fichier
  
  # fetch the latest programme
  scope :current, order('created_at desc').limit(1)
end
