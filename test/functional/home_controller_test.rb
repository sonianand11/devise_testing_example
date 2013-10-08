require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should give redirect response" do
    get :index
    assert_response :redirect
  end

  test "should get home page html after signin" do
    sign_in @user_one
    get :index
    assert_response :success
    assert_select "h1","Home#index"
  end

  test "should show signin page after signout" do
    sign_in @user_one
    get :index
    assert_response :success
    assert_select "h1","Home#index"
    sign_out @user_one
    get :index
    assert_response :redirect
  end

end
