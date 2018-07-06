require_relative '../config/environment.rb'

def reload
  load '../config/environment.rb'
end

#Initialize Test Guests
andrea = Guest.new("Andrea")
alex = Guest.new("Alex")
catherine = Guest.new("Catherine")
joshua = Guest.new("Joshua")

#Initialize Test Listings
majestic = Listing.new("The Majestic", "New York")
olympia = Listing.new("The Olympia", "Paris")
criterion = Listing.new("The Criterion", "London")
lyceum = Listing.new("The Lyceum", "Tokyo")
hudson = Listing.new("The Hudson", "New York")
excelsior = Listing.new("The Excelsior", "New York")

#Initialize Test Trips
Trip.new(majestic,andrea)
Trip.new(majestic,alex)
Trip.new(olympia,catherine)
Trip.new(olympia,joshua)
Trip.new(criterion,joshua)
Trip.new(lyceum,andrea)
Trip.new(lyceum,andrea)
Trip.new(olympia,catherine)
Trip.new(olympia,catherine)


binding.pry

reload
#dsfsdf
