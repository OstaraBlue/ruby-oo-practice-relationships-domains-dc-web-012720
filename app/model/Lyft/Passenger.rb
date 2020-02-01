# require 'pry'
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
	def drivers 
		array1 = Ride.all.select {
			|ride| ride.passenger == self 
		}
		# binding.pry
		array2 = array1.driver.uniq
		# binding.pry
		array2.map {|ride| ride.driver}
		# binding.pry 
	end 
end 
# binding.pry
