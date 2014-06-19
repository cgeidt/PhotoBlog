class PhotosController < ApplicationController

  def new
  end

  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.create(photo_params)
    redirect_to album_path(@album)
  end

  def edit
  end

  def update
  end

  def destroy
    @album = Album.find(params[:album_id])
    @photo = @album.photos.find(params[:id])
    @photo.destroy
    redirect_to album_path(@album)
  end

  def index
  end



  private

  def photo_params
    params.require(:photo).permit(:title, :description, :url)
  end
end
