class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :category
      t.string :subcategory
      t.boolean :featured
      t.integer :rank
      t.integer :featured_rank
      t.string :title
      t.text :description
      t.text :out_link

      t.timestamps
    end
  end
end
