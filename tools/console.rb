require_relative '../config/environment.rb'

gallery1 = Gallery.new("Van Gogh Museum", "Amsterdam")
gallery2 = Gallery.new("Le Louvre", "Paris")
gallery3 = Gallery.new("Picasso Museum", "Paris")

artist1 = Artist.new("Leonardo DaVinci", 60)
artist2 = Artist.new("Picasso", 54)
artist3 = Artist.new("Vincent Van Gogh", 62)

painting1 = Painting.new("Mona Lisa", 10000000, artist1, gallery2)
painting2 = Painting.new("St John the Baptist", 2121983, artist1, gallery2)
painting3 = Painting.new("Starry Night", 1234567, artist3, gallery1)
painting3 = Painting.new("Irises", 1234567, artist3, gallery2)
painting4 = Painting.new("Woman in Hat and Fur Collar", 1234567, artist2, gallery3)
painting5 = Painting.new("Brick Factory at Tortosa", 1234567, artist2, gallery3)




binding.pry

puts "Bob Ross rules."
