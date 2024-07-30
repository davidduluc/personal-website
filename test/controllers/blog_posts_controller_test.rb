require "test_helper"

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_posts_url
    assert_response :success
  end

  test "should get show" do
    blog_post = blog_posts(:one)
    get blog_post_url(blog_post)
    assert_response :success
  end
end
