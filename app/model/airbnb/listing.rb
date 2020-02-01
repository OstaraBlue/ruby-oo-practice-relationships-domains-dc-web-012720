class Listing 
    attr_reader :listing_name, :city_name 
    @@all = [] 
    def initialize(listing_name, city_name)
        @listing_name = listing_name 
        @city_name = city_name
        @@all << self 
    end  
    def self.all 
        @@all
    end 
    def guests
        new_array = Trip.all.select do |x| x.listing == self
        end
        new_array.map do |y| y.guest
        end
    end
    def trips
        Trip.all.select do |x| 
            x.listing == self
        end 
    end 
    def trip_count
        self.trips.count
    end 
    def self.find_all_by_city(city_name_string)
        Listing.all.select do |x| 
            x.city_name == city_name_string
        end 
    end 
    def  self.most_popular
        Listing.all.max_by do |x| 
            x.trip_count
        end
    end
end 
