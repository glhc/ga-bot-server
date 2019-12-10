class CreateChatroomMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :chatroom_messages do |t|
      t.integer :chatroom_id
      t.integer :user_id
      t.string :message
      t.timestamps
    end
  end
end
