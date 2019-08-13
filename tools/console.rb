require_relative '../config/environment.rb'

pecaso = Artist.new("Picaso", 20)
najlaa = Artist.new("Najlaa", 5)
noor = Artist.new("Noor", 2)

gallery1 = Gallery.new("Paris Musem", "Paris")
gallery2 = Gallery.new("Pro gallery", "London")
gallery3 = Gallery.new("Middle East Gallery", "Jeddah")

paint1 = Painting.new("Green land", 200, najlaa, gallery1)
paint2 = Painting.new("Sexsy girl", 500, pecaso, gallery1)
paint3 = Painting.new("Fancy Palace", 900, noor, gallery2)
paint4 = Painting.new("Parents Love", 5000, noor, gallery3)

#creat_painting from Artist instance object
# najlaa.create_painting("Cloth Fation", 100, "New-York")

binding.pry

puts "Bob Ross rules."
