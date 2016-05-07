class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|

      t.timestamps null: false
      t.column :home_team_id , :integer
      t.column :away_team_id , :integer
      t.column :match_day, :datetime
      t.column :home_team_score, :integer
      t.column :away_team_score, :integer
      t.column :winner_team_id, :id

    end
  end
end
