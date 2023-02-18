# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up database..."
Flight.destroy_all

puts "Database cleaned"

require "open-uri"

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/de2ahnq74gad6inxept6.jpg")
flight = Flight.new(destination: "Mercury", date: "28/02/2032", time: "15:05", description: "The Closest Planet to The Sun", duration: 16, price: 3999)
flight.photo.attach(io: file, filename: "mercury.jpg", content_type: "image/jpg")
flight.save

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/mkwabbkkeerzn3fsn3i6.jpg")
flight = Flight.new(destination: "Venus", date: "28/02/2023", time: "19:15", description: "Earth's Solar System Twin", duration: 22, price: 5999)
flight.photo.attach(io: file, filename: "venus.jpg", content_type: "image/jpg")
flight.save

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/mars_image_utp4sg.jpg")
flight = Flight.new(destination: "Mars", date: "26/03/2023", time: "12:34", description: "The Red Planet", duration: 18, price: 6999)
flight.photo.attach(io: file, filename: "mars.jpg", content_type: "image/jpg")
flight.save

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/hm5y63dh9usjhwmwdjyg.jpg")
flight = Flight.new(destination: "Jupiter", date: "25/12/2023", time: "19:15", description: "The Largest Planet in the Solar System", duration: 24, price: 4999)
flight.photo.attach(io: file, filename: "jupiter.jpg", content_type: "image/jpg")
flight.save

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/vjt0c7xy0i04rj84tknf.jpg")
flight = Flight.new(destination: "Saturn", date: "19/4/2024", time: "13:00", description: "The Ringed Jewel", duration: 24, price: 5000)
flight.photo.attach(io: file, filename: "saturn.jpg", content_type: "image/jpg")
flight.save

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/wepyfcom0ah1mhbb1qay.jpg")
flight = Flight.new(destination: "Uranus", date: "31/12/2023", time: "16:45", description: "The Tilted, Sideways Planet", duration: 24, price: 7999)
flight.photo.attach(io: file, filename: "uranus.jpg", content_type: "image/jpg")
flight.save

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/mhazjg6t8buigxiiajjv.jpg")
flight = Flight.new(destination: "Neptune", date: "1/5/2024", time: "11:30", description: "A Giant, Stormy Blue Planet", duration: 26, price: 5999)
flight.photo.attach(io: file, filename: "neptune.jpg", content_type: "image/jpg")
flight.save

file = URI.open("https://res.cloudinary.com/duufhyqzx/image/upload/v1676492465/aet7lugc0mk1thffyvxq.jpg")
flight = Flight.new(destination: "Pluto", date: "1/5/2024", time: "11:30", description: "A Dwarf Planet", duration: 26, price: 5999)
flight.photo.attach(io: file, filename: "pluto.jpg", content_type: "image/jpg")
flight.save

puts "Flights created!"
