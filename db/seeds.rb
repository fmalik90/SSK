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
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    },
    {
      destination: "Mercury",
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    },
    {
      destination: "Mercury",
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    },
    {
      destination: "Mercury",
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    },
    {
      destination: "Mercury",
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    },
    {
      destination: "Mercury",
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    },
    {
      destination: "Mercury",
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    },
    {
      destination: "Mercury",
      date: "10/10/2023",
      time: "00:00",
      description: "TBD",
      duration: "24 hours",
      price: "£5000"
    }])
