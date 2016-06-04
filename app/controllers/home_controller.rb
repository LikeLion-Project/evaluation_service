class HomeController < ApplicationController
  def index

    @posts = Post.all.reverse


  end

  def post

  end

  def write

    Post.create(user_id: current_user.id,
                title: params[:title],
                content: params[:content],
                grade: 0)

    redirect_to '/'
  end
end
