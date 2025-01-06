class CommentsController < ApplicationController
  def create
    @blog_post = BlogPost.find(params[:blog_post_id])
    @comment = @blog_post.comments.new(comment_params)

    if user_signed_in?
      @comment.user = current_user
    else
      @comment.user = User.new(email: "anonimo@teste.com")
    end

    if @comment.save
      redirect_to @blog_post, notice: 'Comentário adicionado com sucesso!'
    else
      redirect_to @blog_post, alert: 'Falha ao adicionar comentário.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
