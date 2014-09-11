require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  self.use_instantiated_fixtures = true

  test "should not save album without title" do
    album = Album.new
    assert_not album.save
  end

  test "should save album" do
    album = Album.new(:title => "Meine Bilder")
    assert album.save
  end

  test "should not save same album title twice" do
    album = Album.new(:title => "Doppeltes Album")
    assert album.save
    album = Album.new(:title => "Doppeltes Album")
    assert_not album.save
  end

  # test "should not save album that exists" do
  #   album = Album.new(:title => "Album Eins")
  #   assert_not album.save
  # end

end
