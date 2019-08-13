class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings 
    Painting.all.find_all{|paint| paint.gallery == self}
  end

  def artists
    paintings.map{|paint| paint.artist}
  end

  def artist_names
    paintings.map{|paint| paint.artist.name}
  end

  def most_expensive_painting
    paintings.max_by{|paint| paint.price}
  end
end
