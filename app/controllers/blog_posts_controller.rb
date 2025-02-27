class BlogPostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_blog_post, only: [:edit, :update, :show, :destroy]
  
  def index
    @pagy, @blog_posts = pagy(BlogPost.order(created_at: :desc), items: 3)
  rescue Pagy::OverflowError
    redirect_to root_path(page: 1)
  end

  def show
    @comments = @blog_post.comments.order(created_at: :desc)
  end  

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    
    if @blog_post.save
      redirect_to @blog_post, notice: 'Post criado com sucesso!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @blog_post.update(blog_post_params)
      redirect_to @blog_post, notice: 'Post atualizado com sucesso!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @blog_post.destroy
      redirect_to root_path, notice: 'Post deletado com sucesso!'
    else
      redirect_to blog_posts_path, alert: 'Falha ao deletar o post.'
    end
  end 

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end