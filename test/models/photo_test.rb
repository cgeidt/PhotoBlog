require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  fixtures :all
  self.use_instantiated_fixtures = true

  test "should not save photo without title" do
    photo = photos(:no_title)
    assert_not photo.save
  end

  test "should not save photo without image" do
    photo = photos(:no_image)
    assert_not photo.save
  end

  test "should save photo from fixtures" do
    # use fixture
    photo = photos(:one)
    assert photo.save
  end

  test "should save two photos with same title and description" do
    # use fixture
    photo = photos(:one)
    assert photo.save
    photo = photos(:one)
    assert photo.save
  end
  
end
