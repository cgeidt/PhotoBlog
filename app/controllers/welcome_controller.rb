class WelcomeController < ApplicationController

  def index
    @albums = Album.is_public
    unless current_user == nil
      @albums += Album.is_private.where(:user_id=>current_user.id)
    end
  end

end
