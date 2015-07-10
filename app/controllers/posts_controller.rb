class PostsController < ApplicationController
  load_and_authorize_resource param_method: :post_params
def index

end

def new

end
def show
  @comment = Comment.new
end

def update
  if @post.update(post_params)
    redirect_to @post, notice: "Successfully Updated post"
  else
    render :edit, alert: "There was an error Updating post"
  end
end

def create
  if @post.save(post_params)
    redirect_to @post, notice: "Successfully created new post"
  else
    render :new, alert: "There was an error creating post"
  end
end

def destroy
  @post.destroy
  redirect_to posts_path
end

private
  def post_params
    params.require(:post).permit(:name, :body)

  end
end
