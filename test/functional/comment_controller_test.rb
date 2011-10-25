require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  test "should get viewblog" do
    get :viewblog
    assert_response :success
  end

end
