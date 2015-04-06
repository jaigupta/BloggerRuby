require 'test_helper'

class UserPostLikesControllerTest < ActionController::TestCase
  setup do
    @user_post_like = user_post_likes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_post_likes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_post_like" do
    assert_difference('UserPostLike.count') do
      post :create, user_post_like: {  }
    end

    assert_redirected_to user_post_like_path(assigns(:user_post_like))
  end

  test "should show user_post_like" do
    get :show, id: @user_post_like
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_post_like
    assert_response :success
  end

  test "should update user_post_like" do
    patch :update, id: @user_post_like, user_post_like: {  }
    assert_redirected_to user_post_like_path(assigns(:user_post_like))
  end

  test "should destroy user_post_like" do
    assert_difference('UserPostLike.count', -1) do
      delete :destroy, id: @user_post_like
    end

    assert_redirected_to user_post_likes_path
  end
end
