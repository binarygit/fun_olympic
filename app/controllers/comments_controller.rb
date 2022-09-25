class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(post_id: @post.id, body: params[:body])
    @comment.save
    redirect_to @post
  end
end
