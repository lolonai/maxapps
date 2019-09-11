require 'test_helper'

class GroupesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get groupes_show_url
    assert_response :success
  end

  test "should get view" do
    get groupes_view_url
    assert_response :success
  end

  test "should get edit" do
    get groupes_edit_url
    assert_response :success
  end

  test "should get delete" do
    get groupes_delete_url
    assert_response :success
  end

  test "should get update" do
    get groupes_update_url
    assert_response :success
  end

  test "should get create" do
    get groupes_create_url
    assert_response :success
  end

  test "should get new" do
    get groupes_new_url
    assert_response :success
  end

end
