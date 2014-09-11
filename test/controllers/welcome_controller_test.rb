require 'test_helper'
#require File.dirname(__FILE__) + '/../../app/controllers/welcome_controller'

class WelcomeControllerTest < ActionController::TestCase

  setup do
    @user = User.create(:email => "dummy@net.com", :username => "Paul")
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
