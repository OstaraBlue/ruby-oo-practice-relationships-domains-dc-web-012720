require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


sanfran = Listing.new("Sonata's Hotel", "San Francisco")

sonata = Guest.new("Sonata")

vacation = Trip.new(sanfran, sonata)

philly = Listing.new("Will's Hotel", "Philadelphia")

william = Guest.new("William")

retreat = Trip.new(philly, william)

cruise = Trip.new(sanfran, william)
binding.pry
0