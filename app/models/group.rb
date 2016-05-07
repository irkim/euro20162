class Group < ActiveRecord::Base
  has_many :teams
  has_many :schedules , :foreign_key => 'home_team_id'
  has_many :schedules, :foreign_key => 'away_team_id'
end
