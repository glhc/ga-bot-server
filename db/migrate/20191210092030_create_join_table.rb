class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_friends, id: false do |t|
      t.integer :user_id
      t.integer :friend_user_id
    end

    add_index(:user_relationships, [:user_id, :friend_user_id], :unique => true)
    add_index(:user_relationships, [:friend_user_id, :user_id], :unique => true)
  end
end
