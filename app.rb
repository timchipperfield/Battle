require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base



  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @current_turn = @game.current_turn
    @player1 = @game.player1
    @player2 = @game.player2
    erb :play
  end

  get '/attack' do
    @game = $game
    @player1 = @game.player1
    @player2 = @game.player2
    @game.attack(@player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
