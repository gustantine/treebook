require 'test_helper'
class CustomRoutesTest < ActionDispatch::IntegrationTest
    test "that /login route opens the login page" do
        get '/login'
        assert_response :success
    end
  test "that /logout route opens the log out page" do
      get '/logout'
      assert_response :success
  end
end