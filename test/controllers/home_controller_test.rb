require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get gruplar" do
    get :gruplar
    assert_response :success
  end

end
