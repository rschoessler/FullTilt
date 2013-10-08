require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/:name/:rank/:serialnum' do |name,rank,serialnum|
  @name = name.to_str.downcase
  @rank = rank.to_str.downcase
  @serialnum = serialnum.to_str.downcase
  haml :hello
end
