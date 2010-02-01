class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.date :date
      t.integer :gallery_id

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
