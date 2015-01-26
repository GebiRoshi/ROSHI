class Teacher < ActiveRecord::Base

	has_many :klasses 

#	validates_presence_of :email
#	validates_confirmation_of :password
# 	validates_length_of :password, minimum: 4
# 	validates_format_of :email, with: /regex/i
# 	validates_inclusion_of :age, in: 18..99

# 	validates :password,
		#confirmation: true,
		#length: {minimum: 4}


end
