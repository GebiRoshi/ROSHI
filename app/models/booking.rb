class Booking < ActiveRecord::Base
	belongs_to :klass
	belongs_to :user
	
end
