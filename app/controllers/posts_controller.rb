class PostsController < ApplicationController
 def index
   @posts =  Post.all.order(id: "DESC")
 end

#  def new
#  end

 def create
  Post.create(content: params[:content])
  redirect_to action: :index
 end

 
 def checked
  post = Post.find(params[:id])
  if post.checked 
    post.update(checked: false)
    # checkedだったら外す
  else
    post.update(checked: true)
    # checkedだったつける
  end
  item = Post.find(params[:id])
  render json: { post: item }
 end






end
