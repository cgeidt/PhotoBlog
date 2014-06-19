class AlbumController < ApplicationController

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
  end

  def delete
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to articles_path
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
