# GET ---------------------------------------------------------------

get '/' do
  # Look in app/views/index.erb
  erb :index
end


# POST --------------------------------------------------------------

post '/create_new_game' do
  p params
   # @player1 = Player.create(name: params[:player1_name])
  # @player2 = Player.create(name: params[:player1_name])
end
