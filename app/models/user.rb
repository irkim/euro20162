class User < ActiveRecord::Base
  belongs_to :organization
  has_many :bets
  has_many :schedules , through: :bets
  has_secure_password

  def isadmin?
    self.is_admin == 1

  end

end
