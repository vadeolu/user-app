class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :update, :destroy]

  # GET /blog_posts
  # GET /blog_posts.json
  def index
    @blog_posts = BlogPost.all

    render json: @blog_posts
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.json
  def show
    render json: @blog_post
  end

  # POST /blog_posts
  # POST /blog_posts.json
  def create
    @blog_post = BlogPost.new(blog_post_params)

    if @blog_post.save
      render json: @blog_post, status: :created, location: @blog_post
    else
      render json: @blog_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blog_posts/1
  # PATCH/PUT /blog_posts/1.json
  def update
    @blog_post = BlogPost.find(params[:id])

    if @blog_post.update(blog_post_params)
      head :no_content
    else
      render json: @blog_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.json
  def destroy
    @blog_post.destroy

    head :no_content
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end

  def blog_post_params
    ActiveModelSerializer::Deserialization
      .jsonapi_parse(params, only: [:title, :body])
  end
end
