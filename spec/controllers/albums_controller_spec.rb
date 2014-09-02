
describe 'AlbumsController', :type => :controller do


  it 'redirects to the created album' do
    post :create, :album => {
        :title => 'TestTitle',
        :description => 'TestDescription',
        :private => true
    }

    response.expect redirect_to album_path
  end
end