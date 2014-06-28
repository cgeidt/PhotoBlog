class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @album = Album.find(params[:id])
    @photo = @album.photos.find(params[:id])
    @comment.destroy
  end

  def index
  end

  def show
  end


  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
