class CreateResourceSubcategories < ActiveRecord::Migration
  def change
    create_table :resource_subcategories do |t|
      t.string :title

      t.timestamps
    end
  end
end
