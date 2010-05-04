class Paragraph < ActiveRecord::Base
  belongs_to :article
  has_attached_file :photo1, :styles => {:thumb => "200x200>"}
  has_attached_file :photo2, :styles => {:thumb => "200x200>"}
  has_attached_file :photo3, :styles => {:thumb => "200x200>"}

end
