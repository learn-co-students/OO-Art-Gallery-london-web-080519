class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    #resources 
    @artist = artist
    @gallery = gallery
    #all paintings
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum{|paint| paint.price}
  end
end
