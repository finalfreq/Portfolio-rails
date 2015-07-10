class PostsController < ApplicationController
  load_and_authorize_resource param_method: :post_params
def index

end

def new

end
def show

end

def update

end

def create
  
end

def destroy

end

private
  def blog_params
    params.require(:post).permit(:name, :body)

  end
end
