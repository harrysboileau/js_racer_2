class Game < ActiveRecord::Base
  
  has_many :game_plays
  has_many :games, through: :gameplays
  
end
