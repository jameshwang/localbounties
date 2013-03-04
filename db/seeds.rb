# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all

User.create(name: "Michael S.")
User.create(name: "Joseph K.")

Bounty.delete_all

Bounty.create(owner_id: 1, title: 'Find Parking', description: 'I need to find a parking block within 2 blocks', reward: 500, latitude: 37.7751045496297, longitude: -122.406202023191, duration: '0.516666666666667', status: 'available')
Bounty.create(owner_id: 1, title: 'Line Holder', description: 'I need someone to stand in line at this popular resturant', reward: 300, latitude: 37.7663167023566, longitude: -122.413514787828, duration: '0.45', status: 'available')
Bounty.create(owner_id: 1, title: 'Busy Bar?', description: 'Can someone take a picture of how crowded the bar is?', reward: 50, latitude: 37.7674638515479, longitude: -122.399969519944, duration: '0.15', status: 'available')
Bounty.create(owner_id: 1, title: 'Clean the living room', description: 'Smith Family Only: Clean the living room', reward: 500, latitude: 37.7892058, longitude: -122.4149629, duration: '1.13333333333333', status: 'available')
Bounty.create(owner_id: 1, title: 'Clean the bathroom', description: 'Smith Family Only: Clean the bathroom', reward: 700, latitude: 37.7892058, longitude: -122.4149629, duration: '0.8', status: 'available')
Bounty.create(owner_id: 1, title: 'Take out the trash', description: 'Smith Family Only: Take out the trash', reward: 100, latitude: 37.7892058, longitude: -122.4149629, duration: '0.766666666666667', status: 'available')
Bounty.create(owner_id: 1, title: 'Need help moving smelly body bag', description: 'I need someone to help me move a ~150lbs smelly bag', reward: 500, latitude: 37.7695003932626, longitude: -122.41343087187, duration: '0.483333333333333', status: 'available')
Bounty.create(owner_id: 1, title: 'Find Parking', description: 'I need to find a parking block within 2 blocks', reward: 200, latitude: 37.7699265322792, longitude: -122.410715023497, duration: '1.11666666666667', status: 'available')
Bounty.create(owner_id: 1, title: 'Walk a dog', description: 'Please walk my dog for 30 mins', reward: 180, latitude: 37.7732928230757, longitude: -122.410014856238, duration: '0.65', status: 'available')
Bounty.create(owner_id: 1, title: 'Food Trucks here', description: 'Are the food trucks here yet?', reward: 25, latitude: 37.7732928230757, longitude: -122.410014856238, duration: '1.61666666666667', status: 'available')
Bounty.create(owner_id: 1, title: 'Put in reservation', description: 'Can someone put my name on the reservation.  They only take walkins', reward: 50, latitude: 37.7685274346826, longitude: -122.401032305764, duration: '0.433333333333333', status: 'available')
Bounty.create(owner_id: 1, title: 'Watch bike', description: 'Can someone watch my bike for 10 mins?', reward: 75, latitude: 37.7653641450592, longitude: -122.404314446672, duration: '1.98333333333333', status: 'available')
Bounty.create(owner_id: 1, title: 'NEED Coffee', description: 'Can someone bring me an Americano from blue bottle?', reward: 100, latitude: 37.7703924951983, longitude: -122.400585424731, duration: '1.51666666666667', status: 'available')
Bounty.create(owner_id: 1, title: 'Help Moving Desk', description: 'I need someone to help move a desk for a block', reward: 125, latitude: 37.7663013039996, longitude: -122.40549672969, duration: '1.53333333333333', status: 'available')
Bounty.create(owner_id: 1, title: 'Need a Pliny the Elder', description: 'Can someone bring me a pliny?', reward: 250, latitude: 37.7663167023566, longitude: -122.413514787828, duration: '1.45', status: 'available')
Bounty.create(owner_id: 1, title: 'I Need Cookies!!', description: 'Can someone bring me a bag of oreos?', reward: 450, latitude: 37.7752950126725, longitude: -122.399772878982, duration: '1.9', status: 'available')
Bounty.create(owner_id: 1, hunter_id: 2, title: 'I need water!', description: 'Can someone bring me a water bottle?', reward: 150, latitude: 37.7767647666299, longitude: -122.400389352663, duration: '0.983333333333333', status: 'available')
