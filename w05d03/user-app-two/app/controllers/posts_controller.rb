class PostsController < ApplicationController
  

  # GET /posts
  # GET /posts.json
  def index
    @posts = current_user.posts
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = current_user.posts.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = current_user.posts.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    post = current_user.posts.create(post_params)
    show_page = user_post_path(current_user.id, post.id)
    redirect_to show_page
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    post = current_user.posts.find(params[:id])
    post.update(post_params)
    show_page = user_post_path(current_user.id, post.id)
    redirect_to show_page
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    current_user.posts.destroy(params[:id])
    redirect_to user_posts_path
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
    end

end
