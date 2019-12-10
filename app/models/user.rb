class User < ApplicationRecord
  has_secure_password

  has_many :friends,
    :foreign_key => "friend_id",
    :class_name => "Friend",
    :dependent => :destroy

  has_many :relationships,
    :foreign_key => "friend_id",
    :class_name => "Relationship",
    :dependent => :destroy
end
