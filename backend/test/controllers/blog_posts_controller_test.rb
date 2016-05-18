require 'test_helper'

class BlogPostsControllerTest < ActionController::TestCase
  setup do
    @blog_post = blog_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_posts)
  end

  test "should create blog_post" do
    assert_difference('BlogPost.count') do
      post :create, blog_post: { body: @blog_post.body, title: @blog_post.title, user_id: @blog_post.user_id }
    end

    assert_response 201
  end

  test "should show blog_post" do
    get :show, id: @blog_post
    assert_response :success
  end

  test "should update blog_post" do
    put :update, id: @blog_post, blog_post: { body: @blog_post.body, title: @blog_post.title, user_id: @blog_post.user_id }
    assert_response 204
  end

  test "should destroy blog_post" do
    assert_difference('BlogPost.count', -1) do
      delete :destroy, id: @blog_post
    end

    assert_response 204
  end
end
