require 'test_helper'
#require File.dirname(__FILE__) + '/../../app/controllers/albums_controller'

class AlbumsControllerTest < ActionController::TestCase


  setup do
    @user = User.create(:email=>"dummy@net.com", :username=>"Paul", :id=>125)
    #@user = users(:user_one)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  # test "should update album" do
  #   album = Album.create(id: 201, title: "Bilder", description: "bla", user_id: 101, private: false)
  #   put :update, id: album.id
  #   assert_redirected_to album_path(assigns(:album))
  # end

  test "should get new" do
    get :new
    assert_response :redirect
  end

  # test "should create" do
  #   post :create, :album => { :title => 'TestTitle', :description => 'TestDescr', :private => false }
  #   assert_response :redirect
  # end

  # test "should get edit" do
  #   get :edit
  #   assert_response :success
  # end

  # test "should get update" do
  #   get :update
  #   assert_response :success
  # end

  # test "should get delete" do
  #   get :delete
  #   assert_response :success
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:album)
  # end

  teardown do
    @user = nil
  end

end
