# create_table "friends", force: :cascade do |t|
#     t.integer "user_id"
#     t.integer "friend_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end


class FriendsController < ApplicationController
  before_action :authenticate_user

    def read_people
        @people = User.all
        @people_detail = []
        
        # @people.each do |user|
        #     following = Friend.where(user_id: user.id).length
        #     followers = Friend.where(friend_id: user.id).length
        #     @people_detail.push(user.merge({:following => following, :followers => followers}))
        # end
        render json: @people
    end

    def follow_user
        @var = JSON.parse(params[:query])
        console.log(@var)
    end

    def unfollow_user

    end
    
    def read_profile
        userid = params[:id]
        @user = User.find_by :id => userid
        @following_detail = []
        following = Friend.where(user_id: userid)
        following.each do |user|
            @following_detail.push(User.find_by :id => user.friend_id)
        end
        @followers_detail = []
        followers = Friend.where(friend_id: userid)
        followers.each do |user|
            @followers_detail.push(User.find_by :id => user.user_id)
        end
        
        @query = {
            "user": @user, 
            "following": @following_detail, 
            "followers": @followers_detail
        }

        render json: @query
    end

end
