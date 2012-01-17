class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.date :annee

      t.timestamps
    end
  end
end
