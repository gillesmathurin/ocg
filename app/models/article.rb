class Article < ActiveRecord::Base
  has_many :paragraphs,:dependent => :destroy
  has_attached_file :photo, :styles => { :thumb => "200x200>" }
  has_attached_file :document
  accepts_nested_attributes_for :paragraphs, :allow_destroy => true
  
  named_scope :recent_articles, :order => "created_at desc", :limit => 4  
  
  def to_param
    "#{self.id}-#{self.title.parameterize}"
  end
end
