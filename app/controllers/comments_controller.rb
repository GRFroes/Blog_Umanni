class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      # Transmitir o novo comentário para o ActionCable
      ActionCable.server.broadcast(
        "comments_post_#{@post.id}",
        comment: render_to_string('comments/comment', locals: { comment: @comment })
      )
      head :ok # Resposta bem-sucedida sem redirecionamento
    else
      redirect_to @post, alert: "Erro ao criar comentário."
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
      redirect_to @comment.post, notice: "Comentário excluído com sucesso!"
    else
      redirect_to @comment.post, alert: "Você não pode excluir este comentário."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
