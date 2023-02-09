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

    Flight.create([
    {
      destination: "Mercury",
      date: "10/10/2028",
      time: "10:35",
      description: "The closest planet to the sun",
      duration: 24,
      price: 3999
    },
    {
      destination: "Venus",
      date: "28/02/2032",
      time: "14:05",
      description: "Earth's solar system twin",
      duration: 22,
      price: 5999
    },
    {
      destination: "Mars",
      date: "13/05/2046",
      time: "12:34",
      description: "The red planet",
      duration: 18,
      price: 6999
    },
    {
      destination: "Jupiterr",
      date: "25/12/2036",
      time: "19:15",
      description: "The largest planet in the solar system",
      duration: 24,
      price: 4999
    },
    {
      destination: "Saturn",
      date: "19/7/2042",
      time: "13:00",
      description: "The Ringed Jewel",
      duration: 24,
      price: 5000
    },
    {
      destination: "Uranus",
      date: "31/12/2031",
      time: "16:45",
      description: "The tilted, sideways planet",
      duration: 24,
      price: 7999
    },
    {
      destination: "Neptune",
      date: "1/5/2043",
      time: "11:30",
      description: "A giant, stormy blue planet",
      duration: 26,
      price: 5999
    },
    {
      destination: "Pluto",
      date: "10/10/2027",
      time: "23:45",
      description: "Once a planet, now a dwarf planet",
      duration: 34,
      price: 6999
    }])
