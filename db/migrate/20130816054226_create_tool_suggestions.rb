class CreateToolSuggestions < ActiveRecord::Migration
  def change
    create_table :tool_suggestions do |t|
      t.string :email
      t.string :user_name
      t.text :message
      t.text :tool_name
      t.integer :user_id
      t.string :tool_type

      t.timestamps
    end
  end
end
