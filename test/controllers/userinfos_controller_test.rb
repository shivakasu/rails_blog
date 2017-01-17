require 'test_helper'

class UserinfosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get userinfos_show_url
    assert_response :success
  end

end
