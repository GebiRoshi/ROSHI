require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get cancellation" do
    get :cancellation
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get tou" do
    get :tou
    assert_response :success
  end

end
