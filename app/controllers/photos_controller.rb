class PhotosController < ApplicationController

  add_breadcrumb t('photo'), :photo

  def new
    @album = Album.find(params[:album_id])
    unless @album.user_id == current_user.id
      redirect_to @album
    end
  end

  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.create(photo_params)
    @photo.user_id = current_user.id
    if @photo.save then
      redirect_to album_photo_path(@album, @photo)
    else
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:album_id])
    @photo = Photo.find(params[:id])
    unless @photo.user_id == current_user.id
      redirect_to album_photo_path
    end
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
    if owner(@photo)
      @photo.destroy
      redirect_to album_path(@album)
    end
  end

  def index
    @photos = Photo.is_public
    unless current_user == nil
      @photos += Photo.is_private.where(:user_id=>current_user.id)
    end
  end

  def show
    @photos = Photo.where(album_id: params[:album_id])
    @photo = Photo.find(params[:id])
    @album = Album.find(params[:album_id])
  end


  private

  def owner(photo)
    if photo == nil
      return false
    end
    if current_user == nil
      return false
    end
    unless photo.user_id == current_user.id
      return false
    else
      return true
    end
  end

  def photo_params
    params.require(:photo).permit(:image, :title, :description, :private)
  end
end
