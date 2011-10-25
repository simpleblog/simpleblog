require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  test "should get viewblogs" do
    get :viewblogs
    assert_response :success
  end

end
