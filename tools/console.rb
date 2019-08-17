require_relative '../config/environment.rb'

# Artist.new(name:, years_experience:)
davinci = Artist.new(name: "Da Vinci", years_experience: 10)
erin = Artist.new(name: "Erin", years_experience: 1)
ben = Artist.new(name: "Ben", years_experience: 5)


# Gallery.new(name:, city:)
louvre = Gallery.new(name: "The Louvre", city: "Paris")
newyorkbluechip = Gallery.new(name: "Blue Chip Gallery", city: "New York City")


# Painting.new(title:, price:, artist:, gallery:)
monalisa = Painting.new(title: "Mona Lisa", price: 10000, artist:davinci, gallery: louvre)
erinspainting = Painting.new(title: "a better painting", price: 100000, artist:erin, gallery: newyorkbluechip)
benspainting = Painting.new(title: "an even better painting", price: 200, artist:ben, gallery: newyorkbluechip)
erinspainting2 = Painting.new(title: "blue painting", price: 1000, artist:erin, gallery: newyorkbluechip)
erinspainting3 = Painting.new(title: "red painting", price: 100, artist:erin, gallery: newyorkbluechip)
erinspainting4 = Painting.new(title: "green painting", price: 100, artist:erin, gallery: louvre)


binding.pry

puts "Bob Ross rules."
#Yes he does :)

