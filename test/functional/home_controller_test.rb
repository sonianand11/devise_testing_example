require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should give redirect response" do
    get :index
    assert_response :redirect
  end

end
