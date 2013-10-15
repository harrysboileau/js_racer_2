# GET ---------------------------------------------------------------

get '/' do
  # Look in app/views/index.erb
  erb :index
end




# POST --------------------------------------------------------------

post '/create_new_game' do

  @player1 = Player.find_by_name(params[:player1_name])
  @player2 = Player.find_by_name(params[:player2_name])
  if @player1 && @player2
    erb :play
  elsif !@player1 && @player2
    @player1 = Player.create(name: params[:player1_name])
    erb :play
  elsif !@player2 && @player1
    @player2 = Player.create(name: params[:player2_name])
    erb :play
  else
    @player1 = Player.create(name: params[:player1_name])
    @player2 = Player.create(name: params[:player2_name])
    erb :play
  end
end

post '/updategamewinner' do

  @game = Game.create(winner_id: params[:winner_id], winning_time: params[:winning_time])
  Gameplay.create(player_id: params[:player1_id], :game_id => @game.id)
  Gameplay.create(player_id: params[:player2_id], :game_id => @game.id)

end





