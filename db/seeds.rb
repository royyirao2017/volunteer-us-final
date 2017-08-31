# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

VolunteerApplication.delete_all
Event.delete_all

user = User.create!({
  email: "billgates@volunteerus.com",
  password: "123123",
  name: "Bill Gates",
  phone_number: '12345678',
  age: 22,
  university: "Micro University",
  })

user_2 = User.create!({
  email: "ssnape@volunteerus.com",
  password: "123123",
  name: "Severus Snape",
  phone_number: "90909090909",
  age: 21,
  university: "Hog Warts U",
  })

user_3 = User.create!({
  email: "dumble@volunteerus.com",
  password: "123123",
  name: "Dumble Dore",
  phone_number: "90909090909",
  age: 21,
  university: "Hog Warts U",
  })

event = Event.create!({
  title: "Coding Meet Up September Edition",
  date: Date.today + 1.month,
  location: "Chengdu",
  volunteer_number: 19,
  user_id: user.id,
  category: "科技创业",
  poster: "http://placehold.it/300x200",
  description: "Learn how to code like the best, from the best",
  volunteer_duties: "Be the rubber ducky",
  volunteer_perks: "Free t-shirt and tote bag for all volunteers",
  featured: true
  })

Event.create!({
  title: "Happy Day Glorious Celebration",
  date: Date.today + 1.month,
  location: "Paris",
  volunteer_number: 19,
  user_id: user.id,
  category: "健康医疗",
  poster: "http://www.altoonaumc.org/wp-content/uploads/2014/03/Palm-Sunday-slider-399x180.png",
  description: "A Palm Day Celebration",
  volunteer_duties: "Keep the guests happy, distracted from the mundanity of life!",
  volunteer_perks: "Free food and drink",
  featured: false
})

Event.create!({
  title: "Alcoholics Anonymous",
  date: Date.today + 1.month,
  location: "Paris",
  volunteer_number: 19,
  user_id: user.id,
  category: "健康医疗",
  poster: "http://placehold.it/300x200",
  description: "Bill Gates wants to teach you how to give up booze",
  volunteer_duties: "Don't let them drink",
  volunteer_perks: "You get to drink",
  featured: false
})

Event.create!({
  title: "Social Impact: Lunch and Learn",
  date: Date.today + 1.month,
  location: "New York",
  volunteer_number: 5,
  user_id: user.id,
  category: "科技创业",
  poster: "https://socialimpact.wharton.upenn.edu/wp-content/uploads/2016/03/Lunch-and-Learn-graphic-399x180.jpg",
  description: "Eat lunch, learn about social impact!",
  volunteer_duties: "Direct guests to the appropriate tables.",
  volunteer_perks: "Meet the most influential individuals in the social impact world.",
  featured: true
})

Event.create({
 title: "World Cancer Day",
 date: Date.today + 6.month,
 location: "SBC TianFu XinGu, Chengdu",
 volunteer_number: 20,
 user_id: user.id,
 category: "healthcare",
 poster: "http://www.cancerresearchuk.org/sites/default/files/world-cancer-day-header-medium.png",
 description: "We are spreading awareness to the global cancer research done. Showing what projects and opportunities are available here in Chengdu and across the world.",
 volunteer_duties: "Volunteers will be doing ushering, setting up and cleaning up. Also help out vendors at the event.",
 volunteer_perks: "goodie bag, t-shirt, networking opportunites",
 featured: false
})

Event.create({
 title: "CollegeBoard USA",
 date: Date.today + 8.month,
 location: "Walnut, Chengdu",
 volunteer_number: 50,
 user_id: user.id,
 category: "健康医疗",
 poster: "http://az616578.vo.msecnd.net/files/2016/05/14/6359879551089627791744389225_collegeboard.png (102kB)",
 description: "CollegeBoard is hosting an event introducing Chinese and International students living in Chengdu to recruiters from over 60 US Colleges.",
 volunteer_duties: "Helping recruiters with talking to students and parents (translating), handing out leaflets, helping recruiters get their lunch and anything they need, ushering students and giving name tags and goodie bags",
 volunteer_perks: " College merchandise, network opportunities, t-shirt, lunch",
 featured: false
})

Event.create({
 title: "Startup Weekend",
 date: Date.today + 12.month,
 location: "Walnut, Chengdu",
 volunteer_number: 20,
 user_id: user.id,
 category: "健康医疗",
 poster: "http://www.chengdu-expat.com/wp-content/uploads/2016/09/120716_Startup-Weekend-Logo-Green.png",
 description: "One place for everything startup in Chengdu - get involved in the Chengdu startup community, find Chengdu startup events, and discover startup resources.",
 volunteer_duties: "Helping participants getting registered, being teaching aids to teachers at the event, making sure participants and teachers have lunch and dinner",
 volunteer_perks: "network opportunities, t-shirt, lunch",
 featured: false
})

v_a_1 = VolunteerApplication.create!({
  status: "pending",
  user_id: user_2.id,
  event_id: event.id,
  })

v_a_2 = VolunteerApplication.create!({
  status: "pending",
  user_id: user_3.id,
  event_id: event.id,
})
