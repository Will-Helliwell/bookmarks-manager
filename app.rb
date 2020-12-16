require 'sinatra/base'
require './lib/bookmarkfolder'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Howdy'
  end

  get '/bookmarks' do
    @folder = BookmarkFolder.new
    erb :bookmarks
  end

  run! if app_file == $0

end
