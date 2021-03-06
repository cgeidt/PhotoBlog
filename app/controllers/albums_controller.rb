class AlbumsController < ApplicationController

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @album.user_id = current_user.id
    if @album.save then
      redirect_to @album
    else
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
    unless @album.user_id == current_user.id
      redirect_to albums_path
    end
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(album_params)
    @album.save!
    redirect_to @album
  end

  def destroy
    @album = Album.find(params[:id])
    if owner(@album)
      @album.destroy
      redirect_to albums_path
    end
  end

  def index
    @albums = Album.is_public
    unless current_user == nil
      @albums += Album.is_private.where(:user_id=>current_user.id)
    end
  end

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos.is_public
    @user = User.find(@album.user_id)
    unless current_user == nil
      @photos += @album.photos.is_private.where(:user_id=>current_user.id)
    end
  end

  private

  def owner(album)
    if album == nil
      return false
    end
    if current_user == nil
      return false
    end
    unless album.user_id == current_user.id
      return false
    else
      return true
    end
  end

  def album_params
    params.require(:album).permit(:title, :description, :private)
  end

end
