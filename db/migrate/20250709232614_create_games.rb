class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :mode
      t.datetime :release_date
      t.string :developer
      t.references :system_requirement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
