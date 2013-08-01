class CreateAdvicePosts < ActiveRecord::Migration
  def change
    create_table :advice_posts do |t|
      t.string :title
      t.text :post_text

      t.timestamps
    end
  end
end