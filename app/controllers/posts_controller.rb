class PostsController < ApplicationController

    def index
      @posts = Post.all
    end

    def show
      @post = Post.find(params[:id])
    end

    def new
      @post = Post.new
    end

    def create
      # post_params = params.erquire(:post)
      new_post = Post.new(post_params)

      if new_post.save
        redirect_to new_post_path
      end
    end
    
    def edit
    end

    def update
    end

    

    def private
      params.require(:title).permit(:title, content)
    end
end
