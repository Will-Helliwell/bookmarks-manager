require 'sinatra/base'
require './lib/bookmarkfolder'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Howdy'
    erb :index
    # fill text box + button to add bookmark
    # button to view bookmarks
  end

  get '/bookmarks' do
    @folder = BookmarkFolder.all
    erb :bookmarks
  end

  post '/add_bookmark' do
    BookmarkFolder.add_bookmark(params[:url], params[:name])
    redirect '/'
  end

  run! if app_file == $0

end
