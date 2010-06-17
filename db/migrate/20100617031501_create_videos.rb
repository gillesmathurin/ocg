class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.text :youtube_url
      t.text :vimeo_url
      t.string :titre, :description

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
