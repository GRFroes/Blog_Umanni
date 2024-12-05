class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.order(created_at: :asc)
    @comment = Comment.new
    
    # Passando o ID do post para o JavaScript
    gon.post_id = @post.id
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to @post, notice: "Post criado com sucesso!"
    else
      render :new, alert: "Erro ao criar post."
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post, notice: "Post atualizado com sucesso!"
    else
      render :edit, alert: "Erro ao atualizar post."
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "Post excluído com sucesso!"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
