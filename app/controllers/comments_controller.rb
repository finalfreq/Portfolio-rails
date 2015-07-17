class CommentsController < ApplicationController
    load_and_authorize_resource param_method: :comment_params
    load_and_authorize_resource :post
  def new
  end

  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      current_user.comments.push(@comment)
      respond_to do |format|
        format.html {redirect_to @post}
        format.js
      end
    else
      flash[:alert] = "There was a problem with your comment - form empty"
      redirect_to post_path(@post)
    end

  end
  def edit

  end

  def update
    if @comment.update(comment_params)
      flash[:notice] = "Your comment has been updated!"
      redirect_to post_path(@comment.post)
    else
      render :edit, alert: "There was an issue adding your comment."
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post)
  end
  private

  def comment_params
    params.require(:comment).permit(:body)
  end


end
