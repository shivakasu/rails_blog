require 'test_helper'

class LikeArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get like_articles_create_url
    assert_response :success
  end

  test "should get destroy" do
    get like_articles_destroy_url
    assert_response :success
  end

end
