class AddPhotoColumnToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :photo, :string
  end

  def self.down
    remove_column :articles, :photo
  end
end
