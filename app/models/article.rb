class Article < ActiveRecord::Base
  
  has_attached_file :photo, :styles => { :thumb => "200x200>" }
  
  named_scope :recent_articles, :order => "created_at desc", :limit => 4  
  
  def to_param
    "#{self.id}-#{self.title.parameterize}"
  end
end
