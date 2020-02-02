require 'pry'
class Driver
	attr_reader :name
	@@all = [] 
	def initialize(name)
        @name = name 
		@@all << self 
	end 
	def self.all 
		@@all 
	end 
	def rides 
		Ride.all.select do
			|ride| ride.driver == self 
		end
	end 
	def passengers
		self.rides.map do 
			|ride| ride.passenger
		end.uniq 
	end 
	def total_distance
		self.rides.reduce(0) do |distance_total, ride| 
			distance_total + ride.distance.to_f  
		end
	end
	def self.mileage_cap(mileage) 
		Driver.all.select do
			|driver| driver.total_distance > mileage.to_f
		end
	end 
end 