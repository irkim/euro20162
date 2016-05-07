class Schedules < ActiveRecord::Migration
  def change
    change_table :schedules do |t|
    t.column :home_team_id , :integer
    t.column :away_team_id , :integer
    t.column :match_day, :datetime
    t.column :home_team_score, :integer
    t.column :away_team_score, :integer
    t.column :winner_team_id, :integer
    end
    end
end
