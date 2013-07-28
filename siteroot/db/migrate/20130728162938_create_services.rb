class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :category
      t.boolean :featured
      t.integer :rank
      t.integer :featured_rank
      t.string :title
      t.string :subtitle
      t.text :description
      t.text :out_link

      t.timestamps
    end
  end
end
