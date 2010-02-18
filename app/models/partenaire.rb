class Partenaire < ActiveRecord::Base
  has_attached_file :logo, :styles => {:medium => "200x200>"}
  
  def adresse_complete
    "#{adresse} #{cp} #{ville}"
  end
end
