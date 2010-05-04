class CreateParagraphs < ActiveRecord::Migration
  def self.up
    create_table :paragraphs do |t|
      t.text :content
      t.string :photo1_file_name
      t.string :photo1_content_type
      t.integer :photo1_file_size
      t.datetime :photo1_updated_at
      t.string :photo1_file_name
      t.string :photo2_content_type
      t.integer :photo2_file_size
      t.datetime :photo2_updated_at
      t.string :photo3_file_name
      t.string :photo3_content_type
      t.integer :photo3_file_size
      t.datetime :photo3_updated_at
      t.integer :article_id

      t.timestamps
    end
  end

  def self.down
    drop_table :paragraphs
  end
end
