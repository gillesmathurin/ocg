class AddInfosColumnsToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :auteur, :string
    add_column :articles, :date_pub, :date
    add_column :articles, :provenance, :string
  end

  def self.down
    remove_column :articles, :provenance
    remove_column :articles, :date_pub
    remove_column :articles, :auteur
  end
end
