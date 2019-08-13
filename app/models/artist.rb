class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|paint| paint.artist == self}
  end

  def galleries
    paintings.map{|paint| paint.gallery.name}
  end

  def cities
    paintings.map{|paint| paint.gallery.city}
  end

  def self.total_experience
    self.all.sum{|artist| artist.years_experience}
  end

  def self.most_prolific
    self.all.max_by{|artist| artist.years_experience}
  end

  def create_painting(title, price, galleries)
    Painting.new(title, price, self, galleries)
  end
  
end
