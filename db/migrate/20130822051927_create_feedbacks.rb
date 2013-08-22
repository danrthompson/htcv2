class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :message
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
