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
        @friends = Friend.all
        render json: @friends
    end

    # POST /friend_add
    # POST /friend_add.json
    def create
        @friend = Friend.new(friend_params)
        @friend.save
    end

    # DELETE /friend_delete/1
    # DELETE /friend_delete/1.json
    def destroy
        @friend = Friend.find_by :id => params[:id]
        respond_to do |format|
            format.html { redirect_to friend_url, notice: 'Friend deleted' }
            format.json { head :no_content }
        end
    end

    private
        def friend_params
            params.require(:friend).permit(:user_id, :friend_id)
        end

end
