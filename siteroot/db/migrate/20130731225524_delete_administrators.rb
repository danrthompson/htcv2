class DeleteAdministrators < ActiveRecord::Migration
  def up
  	drop_table :administrators
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
