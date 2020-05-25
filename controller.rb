require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')


get '/' do
  erb(:home)
end

get '/play/:input1/:input2' do
  @winner = Game.play(params[:input1], params[:input2])
  erb(:winner)
end

get '/play/rock' do
  @winner = Game.play("rock", "")
  erb(:winner)
end

get '/play/paper' do
  @winner = Game.play("paper", "")
  erb(:winner)
end

get '/play/scissors' do
  @winner = Game.play("scissors", "")
  erb(:winner)
end
