require 'sinatra/base'
require 'sinatra/flash'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base

enable :sessions
register Sinatra::Flash

  get '/' do
    "Hello World!"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:index)
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    if Bookmark.create(url: params['url'])
      redirect '/bookmarks'
    else
      flash[:error] = "You must submit a valid URL."
      redirect '/bookmarks/new'
    end
  end


run! if app_file == $0

end
