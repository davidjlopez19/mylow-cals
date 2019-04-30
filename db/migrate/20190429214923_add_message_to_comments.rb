class AddMessageToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :message, :text
    add_column :comments, :rating, :string
    add_column :comments, :user_id, :integer
    add_column :comments, :place_id, :integer
    
    add_index :comments, [:user_id, :place_id]
    add_index :comments, :place_id
  end
end
