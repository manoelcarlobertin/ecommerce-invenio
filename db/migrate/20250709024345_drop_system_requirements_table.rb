class DropSystemRequirementsTable < ActiveRecord::Migration[8.0]
  def up
    drop_table :system_requirements
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
