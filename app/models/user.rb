class User < ActiveRecord::Base
  belongs_to :organization
  has_secure_password

end
