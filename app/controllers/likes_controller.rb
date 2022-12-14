class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = current_user.likes.build(post_id: @post.id)
    @like.save
    redirect_to @post
  end

  def destroy 
    @post = Post.find(params[:post_id])
    @like = Like.find_by(user_id: current_user.id, post_id: @post.id)
    @like.destroy
    redirect_to @post
  end
end
