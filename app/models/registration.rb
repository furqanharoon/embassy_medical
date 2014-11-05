class Registration < ActiveRecord::Base
	has_secure_password

def self.auth(username,password)
	user =  Registration.find_by_user_name(username)
	if user && user.authenticate(password) && user.status? 
		return user
	else 
		nil
	end	 
end

end