class User < ActiveRecord::Base
	has_many :decisions
	 has_secure_password

end
