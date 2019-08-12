require_relative '../config/environment.rb'

leo = Artist.new("Leo", 20)
hammond = Artist.new("Hammond", 10)
carlos = Artist.new("Carlos", 50)
pedro = Artist.new("Pedro", 3)

aude_gallery = Gallery.new("Aude's Gallery", "Paris")
da_vinci_gallery = Gallery.new("Da Vinci Gallery", "Milan")
ny_gallery = Gallery.new("New York Gallery", "New York")

the_tree = Painting.new("The Tree", 3000, leo, aude_gallery)
the_bird = Painting.new("The Bird", 200, pedro, aude_gallery)
the_sky = Painting.new("The Sky", 5000, leo, da_vinci_gallery)
the_lady = Painting.new("The Lady", 30000, hammond, da_vinci_gallery)
the_hunt = Painting.new("The Lady", 40000, hammond, da_vinci_gallery)
the_fox = Painting.new("The Fox", 8000, carlos, ny_gallery)

binding.pry

puts "Bob Ross rules."
