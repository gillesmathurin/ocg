class AddFederationColumnToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :federation, :string
  end

  def self.down
    remove_column :events, :federation
  end
end
