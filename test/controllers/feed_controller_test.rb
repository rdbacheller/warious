require 'test_helper'

class FeedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get expanded" do
    get :expanded
    assert_response :success
  end

  test "should get forbidden" do
    get :forbidden
    assert_response :success
  end

end
