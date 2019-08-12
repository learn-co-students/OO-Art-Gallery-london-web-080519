require_relative '../config/environment.rb'


artist1 = Artist.new("vincent", 35)
artist2 = Artist.new("pablo", 45)
artist3 = Artist.new("salvador", 55)

gallery1 = Gallery.new("l'art", "paris")
gallery2 = Gallery.new("artino", "milan")

painting1 = Painting.new("beauty", 2000, artist1, gallery1)
painting2 = Painting.new("sadness", 1000, artist2, gallery1)
painting3 = Painting.new("pain", 3000, artist3, gallery1)
painting4 = Painting.new("hunger", 20000, artist1, gallery2)
painting5 = Painting.new("happiness", 8000, artist2, gallery1)


binding.pry

puts "Bob Ross rules."
