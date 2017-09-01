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

user = User.create!({
  email: "dengel29@gmail.com",
  password: "123123",
  name: "Bill Gates",
  phone_number: '12345678',
  age: 22,
  university: "Micro University",
  })

user_2 = User.create!({
  email: "snape2@volunteerus.com",
  password: "123123",
  name: "Severus Snape",
  phone_number: "90909090909",
  age: 21,
  university: "Hog Warts U",
  })

user_3 = User.create!({
  email: "d_umble3@volunteerus.com",
  password: "123123",
  name: "Dumble Dore",
  phone_number: "90909090909",
  age: 21,
  university: "Hog Warts U",
  })

event = Event.create!({
  title: "AISN国际志愿者第一批招募通知",
  date: Date.today + 1.month,
  location: "成都",
  volunteer_number: 20,
  user_id: user_2.id,
  category: "科技创业",
  poster: "https://static.pexels.com/photos/296878/pexels-photo-296878.jpeg",
  volunteer_duties: "（一）摄影：1、每周二AISN团队的外国文化大使会探索中国地道美食，并采访美食背后创业者的故事。你将作为摄影师参与视频拍摄及编辑。（设备要求：高清像素手机、DV、或单反等，如果没有设备我们将提供摄影设备）2、每周日拍摄主题视频，活动形式不限，主要让中外友人体验多国文化差异。例如街头采访测试、专访故事人物、体验中国传统民俗等等。（二）文化交流活动策划：1、每周二的“吃货 sos”节目，协助AISN团队进行策划，带领外国友人了解中国地道美食，并探索美食背后创业者的故事。你将负责拍摄选址（协助或主导）、语言翻译、路线向导的工作 2、每周日的“Walkabout”节目，带外国友人深入了解中国文化、体验中外文化差异。你将负责该活动的策划（协助或主导）、语言翻译、路线向导工作",
  volunteer_perks: "志愿者证书，实践证明，免费参加AISN组织的户内外文化交流活动，2018年初作为国际志愿者与AISN团队前往俄罗斯的机会",
  featured: false
  })

Event.create!({
  title: "Happy Day Glorious Celebration",
  date: Date.today + 1.month,
  location: "Paris",
  volunteer_number: 19,
  user_id: user_2.id,
  category: "健康医疗",
  poster: "http://www.altoonaumc.org/wp-content/uploads/2014/03/Palm-Sunday-slider-399x180.png",
  description: "A Palm Day Celebration",
  volunteer_duties: "Keep the guests happy, distracted from the mundanity of life!",
  volunteer_perks: "Free food and drink",
  featured: true
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

Event.create!({
 title: "World Cancer Day",
 date: Date.today + 6.month,
 location: "SBC TianFu XinGu, Chengdu",
 volunteer_number: 20,
 user_id: user.id,
 category: "健康医疗",
 poster: "http://www.cancerresearchuk.org/sites/default/files/world-cancer-day-header-medium.png",
 description: "We are spreading awareness to the global cancer research done. Showing what projects and opportunities are available here in Chengdu and across the world.",
 volunteer_duties: "Volunteers will be doing ushering, setting up and cleaning up. Also help out vendors at the event.",
 volunteer_perks: "goodie bag, t-shirt, networking opportunites",
 featured: false
})

Event.create!({
 title: "CollegeBoard USA",
 date: Date.today + 8.month,
 location: "Walnut, Chengdu",
 volunteer_number: 50,
 user_id: user.id,
 category: "健康医疗",
 poster: "http://az616578.vo.msecnd.net/files/2016/05/14/6359879551089627791744389225_collegeboard.png",
 description: "CollegeBoard is hosting an event introducing Chinese and International students living in Chengdu to recruiters from over 60 US Colleges.",
 volunteer_duties: "Helping recruiters with talking to students and parents (translating), handing out leaflets, helping recruiters get their lunch and anything they need, ushering students and giving name tags and goodie bags",
 volunteer_perks: " College merchandise, network opportunities, t-shirt, lunch",
 featured: false
})

Event.create!({
 title: "成都创业周末",
 date: Date.today + 12.month,
 location: "氪空间，成都",
 volunteer_number: 20,
 user_id: user.id,
 category: "科技创业",
 poster: "http://www.chengdu-expat.com/wp-content/uploads/2016/09/120716_Startup-Weekend-Logo-Green.png",
 description: "创业周末是一个为技术和非技术创业者们提供体验式教育而设计的活动。活动总共54小时，从周五晚上创业点子分享 (pitch)、头脑风暴到周六周日两天的商业模式创立、产品雏形设计和营销方案确立，再到星期天晚上的路演。通过这紧凑的54个小时，参与者共同分享经验，组成团队，并将创业点子转化为一个小的可行的产品，最终可能成立自己的团队和新的公司。所有团队可在行业专家和当地企业家面前展示他们的创建成果，并且得到切实诚恳的评判和反馈。创业周末始终围绕着行动，创新和教育。无论您是想来验证自己的创业想法，寻找创业道路上的伙伴、学习新的创业技巧和经验或者真真实实地找寻团队开始你自己的事业，选择“创业周末”绝对没有错! ",
 volunteer_duties: "英文组：口语过关，有基本的口译能力. 摄影组：有活动拍摄经验.会务组：负责现场协调工作.",
 volunteer_perks: "志愿者证书，实践证明，免费的午餐和晚餐。",
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
