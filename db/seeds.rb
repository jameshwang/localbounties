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
User.create(name: "Connor W.")
User.create(name: "Vincent S.")
User.create(name: "James H.")

Bounty.delete_all

Bounty.create(owner_id: 1, title: 'Find Parking', description: 'I need to find a parking block within 2 blocks', reward: 500, latitude: 37.7751045496297, longitude: -122.406202023191, duration: '0.516666666666667', status: 'available')
Bounty.create(owner_id: 1, title: 'Line Holder', description: 'I need someone to stand in line at this popular resturant', reward: 300, latitude: 37.7663167023566, longitude: -122.413514787828, duration: '0.45', status: 'available')
Bounty.create(owner_id: 1, title: 'Busy Bar?', description: 'Can someone take a picture of how crowded the bar is?', reward: 50, latitude: 37.7674638515479, longitude: -122.399969519944, duration: '0.15', status: 'available')
Bounty.create(owner_id: 1, title: 'Clean the living room', description: 'Smith Family Only: Clean the living room', reward: 500, latitude: 37.7892058, longitude: -122.4149629, duration: '1.13333333333333', status: 'available')
Bounty.create(owner_id: 1, title: 'Clean the bathroom', description: 'Smith Family Only: Clean the bathroom', reward: 700, latitude: 37.7892058, longitude: -122.4149629, duration: '0.8', status: 'available')
Bounty.create(owner_id: 1, title: 'Take out the trash', description: 'Smith Family Only: Take out the trash', reward: 100, latitude: 37.7892058, longitude: -122.4149629, duration: '0.766666666666667', status: 'available')
Bounty.create(owner_id: 1, title: 'Need help moving smelly body bag', description: 'I need someone to help me move a ~150lbs smelly bag', reward: 500, latitude: 37.7695003932626, longitude: -122.41343087187, duration: '0.483333333333333', status: 'available')
Bounty.create(owner_id: 1, title: 'Find Parking', description: 'I need to find a parking block within 2 blocks', reward: 200, latitude: 37.7699265322792, longitude: -122.410715023497, duration: '1.11666666666667', status: 'available')
