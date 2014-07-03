class AlbumsController < ApplicationController


  add_breadcrumb "Albums", :albums
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save then
      redirect_to @album
    else
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(album_params)
    @album.save!
    redirect_to @album
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end

  def index
    @albums = Album.all

  end

  def show
    @album = Album.find(params[:id])
  end

  private

  def album_params
    params.require(:album).permit(:title, :description)
  end

end
