require 'pry'
class Passenger
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
			|ride| ride.passenger == self 
		end
	end 
	def drivers 
		self.rides.map do 
			|ride| ride.driver
		end.uniq 
	end 
	def total_distance
		self.rides.reduce(0) do |distance_total, ride| 
			distance_total + ride.distance.to_f  
		end
	end 
	def self.premium_members 
		Passenger.all.select do |passenger| 
			passenger.total_distance > 100
		end 
	end 
end
