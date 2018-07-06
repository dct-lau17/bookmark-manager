require 'sinatra/base'
require 'sinatra/flash'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base
set :method_override, true

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
    if Bookmark.create(url: params['url'], title: params['title'])
      redirect '/bookmarks'
    else
      flash[:error] = "You must submit a valid URL."
      redirect '/bookmarks/new'
    end
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(params['id'])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/edit' do
    @bookmark_id = params['id']
    erb :'bookmarks/edit'
  end

  patch '/bookmarks/:id' do
    if Bookmark.update(params['id'], params)
      redirect '/bookmarks'
    else
      flash[:error] = "You must submit a valid URL."
      redirect '/bookmarks/:id/edit'
    end
  end


run! if app_file == $0

end
