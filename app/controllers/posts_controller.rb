class PostsController < ApplicationController
  def new
    @post = Post.new
    @post.build_book
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, flash: { success: I18n.t('flash.post.create.successfully') }
    else
      flash.now[:danger] = I18n.t('flash.post.create.failed')
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @book = @post.book
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, book_attributes: [:title, :image_url])
  end
end
