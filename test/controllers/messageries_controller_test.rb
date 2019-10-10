require 'test_helper'

class MessageriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get messageries_show_url
    assert_response :success
  end

end
