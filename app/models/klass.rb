class Klass < ActiveRecord::Base
	belongs_to :teacher
	validates_presence_of :title
	geocoded_by :place
	after_validation :geocode 
end
