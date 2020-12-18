require 'sinatra/base'
require './lib/Bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Howdy'
    erb :index
  end

  get '/bookmarks' do
    @folder = Bookmark.all
    erb :bookmarks
  end

  post '/add_bookmark' do
    Bookmark.add_bookmark(params[:url], params[:name])
    redirect '/'
  end

  run! if app_file == $0

end
