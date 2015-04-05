require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get killer" do
    get :killer
    assert_response :success
  end

end
