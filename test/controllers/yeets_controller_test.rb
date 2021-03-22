require "test_helper"

class YeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yeet = yeets(:one)
  end

  test "should get index" do
    get yeets_url
    assert_response :success
  end

  test "should get new" do
    get new_yeet_url
    assert_response :success
  end

  test "should create yeet" do
    assert_difference('Yeet.count') do
      post yeets_url, params: { yeet: { yeet: @yeet.yeet } }
    end

    assert_redirected_to yeet_url(Yeet.last)
  end

  test "should show yeet" do
    get yeet_url(@yeet)
    assert_response :success
  end

  test "should get edit" do
    get edit_yeet_url(@yeet)
    assert_response :success
  end

  test "should update yeet" do
    patch yeet_url(@yeet), params: { yeet: { yeet: @yeet.yeet } }
    assert_redirected_to yeet_url(@yeet)
  end

  test "should destroy yeet" do
    assert_difference('Yeet.count', -1) do
      delete yeet_url(@yeet)
    end

    assert_redirected_to yeets_url
  end
end
