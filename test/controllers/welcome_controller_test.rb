require 'test_helper'
# required for "@controller is nil" error
require File.dirname(__FILE__) + '/../../app/controllers/welcome_controller'

class WelcomeControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

end
