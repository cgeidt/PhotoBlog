class WelcomeController < ApplicationController

  def index
    @albums = Album.order('created_at DESC')
    #@articles = @articles.joins(:categories).where('category_id = ?', params[:category_id]) if params[:category_id]
  end
end
