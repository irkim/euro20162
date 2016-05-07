class Bet < ActiveRecord::Base
  has_many :teams
  belongs_to :user

end
