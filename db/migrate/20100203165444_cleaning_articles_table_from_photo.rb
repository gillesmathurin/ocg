class CleaningArticlesTableFromPhoto < ActiveRecord::Migration
  def self.up
    remove_column :articles, :photo
    remove_column :events, :photo
    remove_column :images, :photo
  end

  def self.down
    add_column :images, :photo, :string
    add_column :events, :photo, :string
    add_column :articles, :photo, :string
  end
end
