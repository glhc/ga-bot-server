# create_table "friends", force: :cascade do |t|
#     t.integer "user_id"
#     t.integer "friend_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end


class FriendsController < ApplicationController

    # GET /friends
    # GET /friends.json
    def index
        logged_in = 1
        @friends = Friend.where(user_id: logged_in)
        @friends_detail = []
        @friends.each do |friend|
            @friends_detail.push(User.find_by :id => friend.friend_id)
        end
        render json: @friends_detail
    end

    def read_followers
        logged_in = 1
        @following = Friend.where(friend_id: logged_in)
        @follower_detail = []
        @following.each do |friend|
            @follower_detail.push(User.find_by :id => friend.friend_id)
        end
        render json: @follower_detail
    end

    def read_following
        logged_in = 1
        @following = Friend.where(user_id: logged_in)
        @following_detail = []
        @following.each do |friend|
            @following_detail.push(User.find_by :id => friend.friend_id)
        end
        render json: @following_detail
    end

    def destroy_following
        
    end

    def read_people
        @people = User.all
        render json: @people
    end

    private
        def friend_params
            params.require(:friend).permit(:user_id, :friend_id)
        end

end
