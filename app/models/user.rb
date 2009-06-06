class User < ActiveRecord::Base
	def self.check(name, password)
	    user = User.find(:first, :conditions => ["name = ?", name])
	        if user.blank? || user.password != password
		    raise 'Invalid login parametrs'
	        end
	        user
	end
end
