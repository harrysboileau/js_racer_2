class Game < ActiveRecord::Base
  
  has_many :gameplays
  has_many :players, through: :gameplays
  belongs_to :winner, class_name: "Player"
end
