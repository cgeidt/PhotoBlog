require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  #Fixtures funktionieren nicht, da es anscheinend eine Funktion gibt,
  #die comments heisst

  setup do
    @comment = Comment.new(:commenter => 'MyComment', :body => "MyText", :photo_id => 1)
    @commentNoBody = Comment.new(:commenter => 'MyComment', :photo_id => 1)
    @commentNoCommenter = Comment.new(:body => "MyText", :photo_id => 1)
  end


  test "should save a comment" do
    comment = @comment
    assert comment.save
  end

  test "should not save a comment with no body" do
    comment = @commentNoBody
    assert_not comment.save
  end

  test "should not save a comment with no commenter" do
    comment = @commentNoCommenter
    assert_not comment.save
  end

  teardown do
    @comment = nil
  end

end
