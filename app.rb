require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

get '/' do
  "Hello World!"
end

get '/bookmark' do
  p ENV['PWD']
  p ENV['RUBY_VERSION']
  @bookmarks = Bookmark.all
  erb(:index)
end


run! if app_file == $0
end
