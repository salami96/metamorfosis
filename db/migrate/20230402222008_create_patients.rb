class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :conditions
      t.integer :age
      t.references :parents, null: false, foreign_key: true
      t.string :fav_hour
      t.string :fav_weekday

      t.timestamps
    end
  end
end
