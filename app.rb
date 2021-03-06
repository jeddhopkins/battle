require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_1], params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb(:play)
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack(@player_2)
    erb(:attack)
  end


  run! if app_file == $0
end
