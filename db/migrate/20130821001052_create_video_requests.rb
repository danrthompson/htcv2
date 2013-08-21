class CreateVideoRequests < ActiveRecord::Migration
  def change
    create_table :video_requests do |t|
      t.string :email
      t.text :location
      t.text :timeline
      t.text :message
      t.text :budget
      t.integer :user_id

      t.timestamps
    end
  end
end
