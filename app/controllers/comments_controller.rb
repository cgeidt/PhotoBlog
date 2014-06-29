class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params)
    print_comment
    if @comment.save
      @album = Album.find(@photo.album_id)
      redirect_to album_photo_path(@album, @photo)
    else
      #
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @album = Album.find(params[:album_id])
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to album_photo_path(@album, @photo)
  end

  def index
  end

  def show
    @comment = Comments.find(params[:id])
    @photo = Photo.find(params[:photo_id])
  end


  private

  def print_comment
    puts "####{@comment}#id:#{@comment.id}#commenter:#{@comment.commenter}#body:#{@comment.body}#photo_id:#{@comment.photo_id}###"
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
