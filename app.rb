require 'sinatra'
require_relative './models/post'

get '/' do
  '<h1>hey man 4!</h1>'
end

# http://localhost:4567/posts/1256
get '/posts/:id' do
  p "blah"
  p params
  id = params[:id]
  @post = Post.new(title: "Title of post id: #{id}", body: "Body of post id: #{id}")

  erb :post
end

get '/posts/:id/hey/:color' do
  p "blah"
  p params
  id = params[:id]
  color = params[:color]
  @post = Post.new(title: "HEY COLOR #{color}: id: #{id}", body: "Body of post id: #{id}")

  erb :post
end

get '/starwars' do
  @post = Post.new(title: 'Han solo movie trailor came out the other day!', body: 'But im not going to watch it because previews give away too much these days!')

  erb :post
end

get '/spacex' do
  @post = Post.new(title: 'FALCON HEAVY LAUNCH TODAY!', body: 'I heard it got pushe dback 20 minutes otherwise it would be happening righ tnow')

  erb :post
end

# http: 

# post
# put
# delete
# options
