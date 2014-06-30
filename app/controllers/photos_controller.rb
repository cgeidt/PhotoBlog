class PhotosController < ApplicationController

  def new
    @album = Album.find(params[:album_id])
  end

  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.create(photo_params)
    if @photo.save then
      redirect_to album_photo_path(@album, @photo)
    else
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:album_id])
    @photo = Photo.find(params[:id])
  end

  def update
    @album = Album.find(params[:album_id])
    @photo = Photo.find(params[:id])
    @photo.update_attributes(photo_params)
    @photo.save!
    redirect_to album_photo_path(@album, @photo)
  end

  def destroy
    @album = Album.find(params[:album_id])
    @photo = @album.photos.find(params[:id])
    @photo.destroy
    redirect_to album_path(@album)
  end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @album = Album.find(params[:album_id])
  end


  private

  def print_photo_params(text)
    puts "###{text}##photo_params##title:#{photo_params[:title]}#description:#{photo_params[:description]}#url:#{photo_params[:url]}#filename:#{photo_params[:filename]}##"
  end

  def photo_params_simple
    params.require(:photo).permit(:title, :description)
  end

  def photo_params
    params.require(:photo).permit(:url, :filename, :title, :description)
  end
end
