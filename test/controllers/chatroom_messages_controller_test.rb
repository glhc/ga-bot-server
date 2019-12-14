require 'test_helper'

class ChatroomMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatroom_message = chatroom_messages(:one)
  end

  test "should get index" do
    get chatroom_messages_url, as: :json
    assert_response :success
  end

  test "should create chatroom_message" do
    assert_difference('ChatroomMessage.count') do
      post chatroom_messages_url, params: { chatroom_message: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show chatroom_message" do
    get chatroom_message_url(@chatroom_message), as: :json
    assert_response :success
  end

  test "should update chatroom_message" do
    patch chatroom_message_url(@chatroom_message), params: { chatroom_message: {  } }, as: :json
    assert_response 200
  end

  test "should destroy chatroom_message" do
    assert_difference('ChatroomMessage.count', -1) do
      delete chatroom_message_url(@chatroom_message), as: :json
    end

    assert_response 204
  end
end
