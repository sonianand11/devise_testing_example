require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user count" do
  	assert_equal 2 , User.count
  end

  test "user one email is test1@user.com" do
  	assert_equal "test1@user.com", @user_one.email
  end
end
