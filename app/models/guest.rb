class Guest

attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pro_traveller
    #   - returns an array of all guests who have made over 1 trip
    Guest.all.select do |guest|
      guest.trip_count > 1
    end
  end

  def self.find_all_by_name(name_string)
    #   - takes an argument of a name (as a string), returns  all the guests with that name
    Guest.all.select do |guest|
      guest.name.downcase == name_string.downcase
    end
  end
  
  def trips
  #   - returns an array of all trips a guest has made
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def listings
    #    - returns an array of all listings a guest has stayed at
    self.trips.map do |trip|
      trip.listing
    end.uniq
  end

  def trip_count
    #   - returns the number of trips a guest has taken
    self.trips.length
  end



end
