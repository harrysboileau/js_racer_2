class Player < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :game_plays
  has_many :games, through: :game_plays

end
