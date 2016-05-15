class Schedule < ActiveRecord::Base
  belongs_to :Team
  has_many :bets
  has_many :users , through: :Bet

end
