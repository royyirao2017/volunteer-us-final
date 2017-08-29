# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

VolunteerApplication.delete_all
Event.delete_all
User.delete_all


user = User.create({
  email: "billgates@volunteerus.com",
  password: "123123",
  })

Event.create({
  title: "Coding Meet Up September Edition",
  date: Date.today + 1.month,
  location: "Chengdu",
  volunteer_number: 19,
  user_id: user.id,
  category: "startup",
  poster: "http://placehold.it/300x200",
  description: "Bill gates wants to teach you how to peel a banana",
  volunteer_duties: "Hold the banana",
  volunteer_perks: "Eat the banana",
  featured: true

  })

Event.create({
  title: "Alcoholics Anonymous",
  date: Date.today + 1.month,
  location: "Paris",
  volunteer_number: 19,
  user_id: user.id,
  category: "startup",
  poster: "http://placehold.it/300x200",
  description: "Bill gates wants to teach you how to give up booze",
  volunteer_duties: "Don't let them drink",
  volunteer_perks: "You get to drink",
  featured: false
})
