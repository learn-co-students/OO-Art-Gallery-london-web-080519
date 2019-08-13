class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name:, years_experience:)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery.name }
  end

  def cities
    paintings.map {|painting| painting.gallery.city}
  end

  def self.total_experience
    self.all.map{|artist| artist.years_experience}.reduce(:+)
  end

  def self.most_prolific
    #highest amount of paintings PER year of experience
    ## how many paintings the artist has made / how many years experience they have
    self.all.map {|artist| artist.paintings.count }
  end

  def create_painting(title, price, gallery)
    Painting.new(title: title, price: price, artist: self, gallery: gallery)
  end

end
