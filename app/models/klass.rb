class Klass < ActiveRecord::Base
	belongs_to :user
	has_many :bookings
	
	validates_presence_of :title
	geocoded_by :place
	after_validation :geocode 
end
