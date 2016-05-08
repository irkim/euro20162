class Dropcolumnsforbet < ActiveRecord::Migration
  def change
    change_table :bets do |b|
      remove_columns :bets ,:home_team, :away_team

    end
  end
end
