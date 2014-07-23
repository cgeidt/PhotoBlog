
crumb :root do
  link t('home'), welcome_index_path
end

crumb :albums do
  link t('albums'), albums_path
end

crumb :album do |album|
  link album.title, album
  parent :albums
end

crumb :photo do |photo|
  link photo.title , album_photo_path(photo.album, photo)
  parent :album, album_path(photo.album)
end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).