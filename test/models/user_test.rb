require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user1 = User.create(:email => "dummy@net.com", :username => "Paul")
    @user2 = User.create(:email => "dummy2@net.com", :username => "Eddi")
    @user3 = User.create(:email => "dummy3@net.com", :username => "Paul")
    @user4 = User.create(:email => "dummy@net.com", :username => "Heino")
  end

  test "should save a user" do
    user = @user1
    assert user.save
  end

  test "should save two users" do
    user = @user1
    assert user.save
    user = @user2
    assert user.save
  end

  test "should not save two users with same username" do
    user = @user1
    assert user.save
    user = @user3
    assert_not user.save
  end

  test "should not save two users with same email" do
    user = @user1
    assert user.save
    user = @user4
    assert_not user.save
  end

  teardown do
    @user1 = nil
    @user2 = nil
    @user3 = nil
    @user4 = nil
  end


end
