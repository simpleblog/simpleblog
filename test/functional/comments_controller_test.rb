require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get viewblog" do
    get :viewblog
    assert_response :success
  end

end
