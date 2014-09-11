require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  setup do
    @user = User.create(:email => "dummy@net.com", :username => "Paul")
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  teardown do
    @user = nil
  end

end
