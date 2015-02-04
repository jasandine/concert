require("bundler/setup")
require("pry")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get '/' do 
  @bands = Band.all 
  @venues = Venue.all  
  erb :index
end

post '/bands' do 
  name = params.fetch("name")
  @band = Band.new({:name => name})
  @band.save
  @bands = Band.all
  redirect '/'
end

get '/bands/:id' do 
  @band = Band.find(params.fetch("id"))
  erb :bands
end