class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      @album = Album.find(@photo.album_id)
      redirect_to album_photo_path(@album, @photo)
    else
      # stay here
    end
  end

  def edit
    # not provided
  end

  def update
    # not provided
  end

  def destroy
    @album = Album.find(params[:album_id])
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to album_photo_path(@album, @photo)
  end

  def index
    # not provided
  end

  def show
    @comment = Comments.find(params[:id])
    @photo = Photo.find(params[:photo_id])
  end


  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
