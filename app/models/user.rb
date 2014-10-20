class User < ActiveRecord::Base
	
	before_create :hash_password

	validates_presence_of :firstname,
		:message => "Firstname not empty"
	validates_presence_of :lastname,
		:message => "Lastname not empty"
	validates_presence_of :password,
		:message => "Password not empty"
	validates :password, length: { minimum: 6, too_long: "Password minimum 6 characters" }

	validates_confirmation_of :password,
                              message: 'should match confirmation'
    validates_presence_of :password_confirmation, if: :password_changed?

	def hash_password
		self.password = Digest::MD5.hexdigest(self.password)
	end

	def self.authenticate(email, password)
		user = User.find_by_email(email)
		if user && user.password == password
			user
		else
			nil
		end
	end

end