class Bettable < ActiveRecord::Migration
  def change
    change_table :bets do |b|

      b.column :user_id, :integer
      b.column :home_team, :integer
      b.column :away_team , :integer
      b.column :home_score_bet, :integer
      b.column :away_score_bet, :integer
      b.column :earned_points , :integer
    end
  end
end
