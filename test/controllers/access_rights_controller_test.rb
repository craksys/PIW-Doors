require "test_helper"

class AccessRightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_right = access_rights(:one)
  end

  test "should get index" do
    get access_rights_url
    assert_response :success
  end

  test "should get new" do
    get new_access_right_url
    assert_response :success
  end

  test "should create access_right" do
    assert_difference("AccessRight.count") do
      post access_rights_url, params: { access_right: { door_id: @access_right.door_id, user_id: @access_right.user_id } }
    end

    assert_redirected_to access_right_url(AccessRight.last)
  end

  test "should show access_right" do
    get access_right_url(@access_right)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_right_url(@access_right)
    assert_response :success
  end

  test "should update access_right" do
    patch access_right_url(@access_right), params: { access_right: { door_id: @access_right.door_id, user_id: @access_right.user_id } }
    assert_redirected_to access_right_url(@access_right)
  end

  test "should destroy access_right" do
    assert_difference("AccessRight.count", -1) do
      delete access_right_url(@access_right)
    end

    assert_redirected_to access_rights_url
  end
end