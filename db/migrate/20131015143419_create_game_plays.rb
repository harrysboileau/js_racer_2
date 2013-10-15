class CreateGamePlays < ActiveRecord::Migration
  def change
    create_table do |t|
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end


# waiting to build this, not sure if I have to, since this appears to be a true join table



