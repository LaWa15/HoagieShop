require 'test_helper'

class HoafiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoafy = hoafies(:one)
  end

  test "should get index" do
    get hoafies_url
    assert_response :success
  end

  test "should get new" do
    get new_hoafy_url
    assert_response :success
  end

  test "should create hoafy" do
    assert_difference('Hoafy.count') do
      post hoafies_url, params: { hoafy: { comment: @hoafy.comment, hoafieOfWeek: @hoafy.hoafieOfWeek, likes: @hoafy.likes, picture: @hoafy.picture, userName: @hoafy.userName, verified: @hoafy.verified } }
    end

    assert_redirected_to hoafy_url(Hoafy.last)
  end

  test "should show hoafy" do
    get hoafy_url(@hoafy)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoafy_url(@hoafy)
    assert_response :success
  end

  test "should update hoafy" do
    patch hoafy_url(@hoafy), params: { hoafy: { comment: @hoafy.comment, hoafieOfWeek: @hoafy.hoafieOfWeek, likes: @hoafy.likes, picture: @hoafy.picture, userName: @hoafy.userName, verified: @hoafy.verified } }
    assert_redirected_to hoafy_url(@hoafy)
  end

  test "should destroy hoafy" do
    assert_difference('Hoafy.count', -1) do
      delete hoafy_url(@hoafy)
    end

    assert_redirected_to hoafies_url
  end
end
