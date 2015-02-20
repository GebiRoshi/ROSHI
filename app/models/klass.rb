class Klass < ActiveRecord::Base
	belongs_to :user
	
	validates_presence_of :title
	geocoded_by [:place, :search]
	after_validation :geocode 
end
