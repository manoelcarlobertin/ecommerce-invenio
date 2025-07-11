class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :productable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
