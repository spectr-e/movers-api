require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { image: @user.image, name: @user.name, password_digest: @user.password_digest, primary_email: @user.primary_email, primary_phone_number: @user.primary_phone_number, secondary_email: @user.secondary_email, secondary_phone_number: @user.secondary_phone_number } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { image: @user.image, name: @user.name, password_digest: @user.password_digest, primary_email: @user.primary_email, primary_phone_number: @user.primary_phone_number, secondary_email: @user.secondary_email, secondary_phone_number: @user.secondary_phone_number } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
