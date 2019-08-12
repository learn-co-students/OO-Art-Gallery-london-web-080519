class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  # Artist.all Returns an array of all the artists
  def self.all
    @@all
  end
  
  # Artist#paintings Returns an array all the paintings by an artist
  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end
  
  # Artist#galleries Returns an array of all the galleries that an artist has paintings in
  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  # Artist#cities Return an array of all cities that an artist has paintings in
  def cities
    galleries.map{|gallery| gallery.city}.uniq
  end
  
  # Artist.total_experience Returns an integer that is the total years of experience of all artists
  def self.total_experience
    self.all.map{|artist| artist.years_experience}.sum
  end

  # Artist.most_prolific Returns an instance of the artist with the highest amount of paintings per 
  # year of experience.
  def self.most_prolific
    self.all.max_by{|artist| artist.paintings.count.to_f / artist.years_experience}
  end
  
  # Artist#create_painting Given the arguments of title, price and gallery, creates a new painting 
  # belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
