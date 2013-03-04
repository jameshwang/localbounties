namespace :script do
  task :update3 => :environment do
  	update_list = []
  	update_list << {title: 'Walk a dog', description: 'Please walk my dog for 30 mins', reward: 180, latitude: 37.7732928230757, longitude: -122.410014856238, duration: '0.65', status: 'in-progress'}
  	update_list << {title: 'Food Trucks here', description: 'Are the food trucks here yet?', reward: 25, latitude: 37.7732928230757, longitude: -122.410014856238, duration: '1.61666666666667', status: 'in-progress'}
  	update_list << {title: 'Put in reservation', description: 'Can someone put my name on the reservation.  They only take walkins', reward: 50, latitude: 37.7685274346826, longitude: -122.401032305764, duration: '0.433333333333333', status: 'available'}
  	update_list << {title: 'Watch bike', description: 'Can someone watch my bike for 10 mins?', reward: 75, latitude: 37.7653641450592, longitude: -122.404314446672, duration: '1.98333333333333', status: 'available'}
  	update_list << {title: 'NEED Coffee', description: 'Can someone bring me an Americano from blue bottle?', reward: 100, latitude: 37.7703924951983, longitude: -122.400585424731, duration: '1.51666666666667', status: 'available'}
  	update_list << {title: 'Help Moving Desk', description: 'I need someone to help move a desk for a block', reward: 125, latitude: 37.7663013039996, longitude: -122.40549672969, duration: '1.53333333333333', status: 'available'}
  	update_list << {title: 'Need a Pliny the Elder', description: 'Can someone bring me a pliny?', reward: 250, latitude: 37.7663167023566, longitude: -122.413514787828, duration: '1.45', status: 'complete'}
  	update_list << {title: 'I Need Cookies!!', description: 'Can someone bring me a bag of oreos?', reward: 450, latitude: 37.7752950126725, longitude: -122.399772878982, duration: '1.9', status: 'complete'}
  	update_list << {title: 'I need water!', description: 'Can someone bring me a water bottle?', reward: 150, latitude: 37.7767647666299, longitude: -122.400389352663, duration: '0.983333333333333', status: 'complete'}
    update_list.each do |obj|
	    Bounty.create(obj)
	    sleep(10)
	  end
  end
end