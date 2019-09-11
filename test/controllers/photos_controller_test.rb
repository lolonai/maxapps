require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get photos_new_url
    assert_response :success
  end

  test "should get create" do
    get photos_create_url
    assert_response :success
  end

  test "should get delete" do
    get photos_delete_url
    assert_response :success
  end

  test "should get show" do
    get photos_show_url
    assert_response :success
  end

end
