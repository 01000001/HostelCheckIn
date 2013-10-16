require 'test_helper'

class TimeControllerTest < ActionController::TestCase
  test "should get set" do
    get :set
    assert_response :success
  end

  test "should get increase" do
    get :increase
    assert_response :success
  end

  test "should get decrease" do
    get :decrease
    assert_response :success
  end

end
