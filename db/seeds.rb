# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "admin", password: "password")
Vehicle.create(name: "Toyota Rav 4", model:"2018", transmission: "Manual", fee: "4500")
Appointment.create(date: "22-12-2020", city:"Accra", vehicle:"Toyota Rav4", model: "2018", user_id: 1)

