class Article < ActiveRecord::Base
  named_scope :recent_articles, :order => "created_at desc", :limit => 4  
end
