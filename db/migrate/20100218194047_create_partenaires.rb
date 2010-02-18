class CreatePartenaires < ActiveRecord::Migration
  def self.up
    create_table :partenaires do |t|
      t.string :name
      t.string :adresse
      t.string :cp
      t.string :ville
      t.string :telephone
      t.string :fax
      t.string :email
      t.string :weburl
      t.string :logo_file_name
      t.integer :logo_file_size
      t.string :logo_content_type
      t.datetime :logo_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :partenaires
  end
end
