require('sinatra')
require('sinatra/contrib/all') 
require('pry')
require_relative('./models/game')

get '/' do
  erb(:home)
end
get '/about' do
  erb(:about)
end
get '/rps/:string1/:string2' do
  logic = Game.new(params[:string1],params[:string2])
  @result = logic.tester()
  # binding.pry
  erb(:result)
end


get '/html'do
send_file('./index.html')

end

