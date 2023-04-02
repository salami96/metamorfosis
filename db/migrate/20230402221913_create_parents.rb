class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :phone
      t.string :document

      t.timestamps
    end
  end
end
