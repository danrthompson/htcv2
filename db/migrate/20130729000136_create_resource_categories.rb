class CreateResourceCategories < ActiveRecord::Migration
  def change
    create_table :resource_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
