class Guest
    attr_reader :name 
    @@all = []
    def initialize(guest_name)
        @name = guest_name 
        @@all << self 
    end  
    def self.all 
        @@all
    end 
    def listings
        new_array = Trip.all.select do |x| x.guest == self
        end
        new_array.map do |y| y.listing
        end
    end
    def trips
        Trip.all.select do |x| 
            x.guest == self
        end 
    end 
    def trip_count
        self.trips.count
    end 
    def self.find_all_by_name(name_string)
        Guest.all.select do |x| 
            x.name == name_string
        end 
    end 
    def self.pro_traveler
        Guest.all.select do |x|
            x.trip_count > 1
        end
    end
end 
