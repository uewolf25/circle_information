class PostController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(
      manager: params[:manager],
      sports_kinds: params[:sports_kinds],
      dates: params[:dates],
      area: params[:area],
      explain: params[:explain]
      )

    if @post.save
      redirect_to("/post/index")
    else
      render("post/new")
    end
  end

end
