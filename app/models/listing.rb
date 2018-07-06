class Listing

  attr_reader :name, :city

  @@all = []

    def initialize(name, city)
      @name = name
      @city = city
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_all_by_city(city_string)
      #   - takes an argument of a city name (as a string) and returns all the listings for that city
      Listing.all.select do |listing|
        listing.city.downcase == city_string.downcase
      end
    end

    def self.most_popular
      #   - finds the listing that has had the most trips
      max_count = 0
      max_listing = nil
      Listing.all.map do |listing|
        if listing.trip_count > max_count
          max_count = listing.trip_count
          max_listing = listing
        end
      end
      max_listing
    end

    def trips
      #   - returns an array of all trips at a listing
      Trip.all.select do |trip|
        trip.listing == self
      end
    end

    def guests
      #   - returns an array of all guests who have stayed at a listing
      self.trips.map do |trip|
        trip.guest
      end.uniq
    end

    def trip_count
      #   - returns the number of trips that have been taken to that listing
      self.trips.length
    end
end
