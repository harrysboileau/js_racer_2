class Player < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :gameplays
  has_many :games, through: :gameplays
  has_many :games_won, class_name: "Game", foreign_key: "winner_id"
end
