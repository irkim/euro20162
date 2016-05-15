class Bet < ActiveRecord::Base

  belongs_to :Schedule
  belongs_to :User

end
