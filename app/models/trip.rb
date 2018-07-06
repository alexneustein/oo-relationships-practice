class Trip

attr_reader :listing, :guest

@@all = []

  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

  def listing
    @listing
  end

  def guest
    @guest
  end
end
