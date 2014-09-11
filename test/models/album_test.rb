require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  # load fixtures
  fixtures :all
  self.use_instantiated_fixtures = true

  test "should not save album without title" do
    album = Album.new
    assert_not album.save
  end

  test "should save album" do
    album = Album.new(:title => "Meine Bilder")
    assert album.save
  end

  test "should not accept duplicate title" do
    album = Album.new(:title => "Doppeltes Album")
    assert album.save
    album = Album.new(:title => "Doppeltes Album")
    assert_not album.save
  end

  test "should get album from fixtures" do
    # use fixture
    album = albums(:album_one)
    assert album.save
  end

end
