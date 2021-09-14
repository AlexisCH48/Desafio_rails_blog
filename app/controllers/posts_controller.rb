class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :DESC)
  end

  def create
    @post = Post.create(
      title: params['title'],
      image: params['image'],
      content: params['content']
    )
    if @post.save
      redirect_to root_path
    end
  end
end