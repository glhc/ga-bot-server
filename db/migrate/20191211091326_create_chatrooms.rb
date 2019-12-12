class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.integer :user_id
      t.string :room_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
