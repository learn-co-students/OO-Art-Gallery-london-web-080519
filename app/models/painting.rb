#The person who keeps track of the artwork is called a Registrar 
class Painting

  attr_reader :title, :price, :artist, :gallery
  @@all = []

  def initialize(title:, price:, artist:, gallery:)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  

end
