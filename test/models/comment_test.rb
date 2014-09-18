require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should save a comment" do
    comment = comments(:one)
    assert comment.save
  end


end
