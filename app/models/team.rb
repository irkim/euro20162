class Team < ActiveRecord::Base
belongs_to :Group
has_many :Schedules, :foreign_key => 'home_team_id'
has_many :Schedules, :foreign_key => 'away_team_id'

end
