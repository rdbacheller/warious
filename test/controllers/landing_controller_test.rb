require 'test_helper'

class LandingControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get pad" do
    get :pad
    assert_response :success
  end

  test "should get spot" do
    get :spot
    assert_response :success
  end

  test "should get restricted" do
    get :restricted
    assert_response :success
  end

  test "should get forbidden" do
    get :forbidden
    assert_response :success
  end

  test "should get portal" do
    get :portal
    assert_response :success
  end

  test "should get easteregg" do
    get :easteregg
    assert_response :success
  end

end
