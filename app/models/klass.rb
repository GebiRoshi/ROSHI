class Klass < ActiveRecord::Base
	geocoded_by :place
	after_validation :geocode 
end
