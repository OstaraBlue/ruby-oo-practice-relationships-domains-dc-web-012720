require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

will = Passenger.new("Will Harris")
mrt = Driver.new("Mr. T")
will_ride1 = Ride.new(will, mrt, "50.5")
will_ride2 = Ride.new(will, mrt, "50.5")
mark = Passenger.new("Mark Harris")
stallone = Driver.new("Stallone") 
mark_ride1 = Ride.new(mark, stallone, "50")
will.drivers
binding.pry 