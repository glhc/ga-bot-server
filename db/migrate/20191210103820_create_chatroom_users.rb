class CreateChatroomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :chatroom_users do |t|
      t.integer :chatroom_id
      t.integer :user_id
      t.boolean :is_admin
      t.timestamps
    end
  end
end
