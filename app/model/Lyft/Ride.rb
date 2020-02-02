require 'pry'
class Ride 
	attr_reader :passenger, :driver, :distance 
	@@all = [] 
	def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver 
        @distance = distance
		@@all << self 
	end 
	def self.all 
		@@all 
	end 
	def self.average_distance 
		Ride.all.reduce(0) do |total, ride|
			total + ride.distance.to_f 
		end / Ride.all.length 
	end 
end 