namespace :script do
  task :update => :environment do
  	update_list = []
  	update_list << {owner_id: 1, title: 'Walk a dog', description: 'Please walk my dog for 30 mins', reward: 180, latitude: 37.7732928230757, longitude: -122.410014856238, duration: '0.65', status: 'available' }
  	update_list << {owner_id: 2, title: 'Food Trucks here', description: 'Are the food trucks here yet?', reward: 25, latitude: 37.7732928230757, longitude: -122.410014856238, duration: '1.61666666666667', status: 'available' }
  	update_list << {owner_id: 4, title: 'Put in reservation', description: 'Can someone put my name on the reservation.  They only take walkins', reward: 50, latitude: 37.7685274346826, longitude: -122.401032305764, duration: '0.433333333333333', status: 'available' }
  	update_list << {owner_id: 4, title: 'Watch bike', description: 'Can someone watch my bike for 10 mins?', reward: 75, latitude: 37.7653641450592, longitude: -122.404314446672, duration: '1.98333333333333', status: 'available' }
  	update_list << {owner_id: 1, title: 'NEED Coffee', description: 'Can someone bring me an Americano from blue bottle?', reward: 100, latitude: 37.7703924951983, longitude: -122.400585424731, duration: '1.51666666666667', status: 'available' }
  	update_list << {owner_id: 2, title: 'Help Moving Desk', description: 'I need someone to help move a desk for a block', reward: 125, latitude: 37.7663013039996, longitude: -122.40549672969, duration: '1.53333333333333', status: 'available' }
  	update_list << {owner_id: 1, title: 'Need a Pliny the Elder', description: 'Can someone bring me a pliny?', reward: 250, latitude: 37.7663167023566, longitude: -122.413514787828, duration: '1.45', status: 'available' }
  	update_list << {owner_id: 3, title: 'I Need Cookies!!', description: 'Can someone bring me a bag of oreos?', reward: 450, latitude: 37.7752950126725, longitude: -122.399772878982, duration: '1.9', status: 'available' }
  	update_list << {owner_id: 5, title: 'I need water!', description: 'Can someone bring me a water bottle?', reward: 150, latitude: 37.7767647666299, longitude: -122.400389352663, duration: '0.983333333333333', status: 'available' }
  	update_list << {owner_id: 2, title: 'Food Trucks here', description: 'Are the food trucks here yet?', reward: 25, latitude: 37.7732928230757, longitude: -122.410014856238, duration: '18.35', status: 'available' }
  	update_list << {owner_id: 1, title: 'Put in reservation', description: 'Can someone put my name on the reservation.  They only take walkins', reward: 50, latitude: 37.7685274346826, longitude: -122.401032305764, duration: '19.7333333333333', status: 'available' }
  	update_list << {owner_id: 5, title: 'Watch bike', description: 'Can someone watch my bike for 10 mins?', reward: 75, latitude: 37.7653641450592, longitude: -122.404314446672, duration: '15.1833333333333', status: 'available' }
  	update_list << {owner_id: 3, title: 'NEED Coffee', description: 'Can someone bring me an Americano from blue bottle?', reward: 100, latitude: 37.7703924951983, longitude: -122.400585424731, duration: '8.65', status: 'available' }
  	update_list << {owner_id: 1, title: 'Help Moving Desk', description: 'I need someone to help move a desk for a block', reward: 125, latitude: 37.7663013039996, longitude: -122.40549672969, duration: '11.6833333333333', status: 'available' }
  	update_list << {owner_id: 4, title: 'Need a Pliny the Elder', description: 'Can someone bring me a pliny?', reward: 250, latitude: 37.7663167023566, longitude: -122.413514787828, duration: '16.9166666666667', status: 'available' }
  	update_list << {owner_id: 1, title: 'I Need Cookies!!', description: 'Can someone bring me a bag of oreos?', reward: 450, latitude: 37.7752950126725, longitude: -122.399772878982, duration: '12.55', status: 'available' }
  	update_list << {owner_id: 1, title: 'I need water!', description: 'Can someone bring me a water bottle?', reward: 150, latitude: 37.7767647666299, longitude: -122.400389352663, duration: '21.6166666666667', status: 'available' }
  	update_list << {owner_id: 2, title: 'Be my friend', description: 'Can someone be my friend for 3 hours?', reward: 500, latitude: 37.7697595972475, longitude: -122.402870606319, duration: '4.71666666666667', status: 'available' }
  	update_list << {owner_id: 2, title: 'Feed my cat', description: 'Can someone feed my cat?', reward: 300, latitude: 37.7616809533667, longitude: -122.398230582999, duration: '19.1833333333333', status: 'available' }
  	update_list << {owner_id: 5, title: 'Give me a quick ride', description: 'I need a ride to downtown', reward: 500, latitude: 37.7611357430097, longitude: -122.409703571935, duration: '16.4666666666667', status: 'available' }
  	update_list << {owner_id: 2, title: 'How busy is In-N-Out', description: 'How busy is it in in-n-out at fishermans warf', reward: 50, latitude: 37.7707246111187, longitude: -122.407535301456, duration: '1.1', status: 'available' }
  	update_list << {owner_id: 4, title: 'Borrow macbook charger', description: 'I need to borrow a macbook pro charger with the new connector', reward: 200, latitude: 37.7744533268942, longitude: -122.407476615371, duration: '3.16666666666667', status: 'available' }
  	update_list << {owner_id: 4, title: 'Hand out resturant fliers', description: 'Hand out fliers for 30 mins during rush hour', reward: 1000, latitude: 37.7689265399276, longitude: -122.400017084817, duration: '9.85', status: 'available' }
  	update_list << {owner_id: 5, title: 'Javascript Help!', description: 'I will give someone $5 bucks to help me for 30 mins on javascript stuff', reward: 500, latitude: 37.7757309717552, longitude: -122.394260304575, duration: '8.28333333333333', status: 'available' }
  	update_list << {owner_id: 2, title: 'iPhone charger', description: 'I need an iPhone charger for the next 3 hours', reward: 100, latitude: 37.7654365246649, longitude: -122.407878446739, duration: '22.3', status: 'available' }
  	update_list << {owner_id: 2, title: 'Help change a light bulb', description: 'I need someone to help me change a light bulb', reward: 100, latitude: 37.7702531665504, longitude: -122.40782667103, duration: '6.86666666666667', status: 'available' }
  	update_list << {owner_id: 3, title: 'Plung my toilet', description: 'My toilet is clogged.  I need help!!', reward: 200, latitude: 37.7677985499479, longitude: -122.397352696364, duration: '21.4666666666667', status: 'available' }
  	update_list << {owner_id: 2, title: 'Deliver a letter across town', description: 'I need it delivered to the address', reward: 500, latitude: 37.7631615395088, longitude: -122.406874722542, duration: '6.21666666666667', status: 'available' }
  	update_list << {owner_id: 3, title: 'Help me with laundry', description: 'Can someone help fold my not embarrassing laundry?', reward: 75, latitude: 37.7735313350781, longitude: -122.397973596027, duration: '16.2666666666667', status: 'available' }
  	update_list << {owner_id: 4, title: 'Line Holder', description: 'I want to reserve a table of 4 at Umami Burger', reward: 100, latitude: 37.7781076676977, longitude: -122.397419497238, duration: '13.3833333333333', status: 'available' }
  	update_list << {owner_id: 4, title: 'Need to borrow dress shoes', description: 'I forgot to pack my dress shoes.  Size 10.', reward: 500, latitude: 37.7760317928958, longitude: -122.398582572583, duration: '11.55', status: 'available' }
  	update_list << {owner_id: 2, title: 'Dishwash', description: 'I need someone to dishwash my dishes', reward: 200, latitude: 37.7656231431291, longitude: -122.412023415511, duration: '4.53333333333333', status: 'available' }
  	update_list << {owner_id: 3, title: 'Need to borrow a dress belt', description: 'I forgot my dress belt.  Can I borrow it for a day?', reward: 180, latitude: 37.7805376797876, longitude: -122.407984034754, duration: '8.53333333333333', status: 'available' }
  	update_list << {owner_id: 5, title: 'Tell me I am beautiful', description: 'Just tell me I am beautiful', reward: 25, latitude: 37.7808631267889, longitude: -122.396350962527, duration: '20.2166666666667', status: 'available' }
  	update_list << {owner_id: 2, title: 'Tell me I am smart', description: 'Tell me I am smart', reward: 50, latitude: 37.7801681209631, longitude: -122.412380925245, duration: '1.15', status: 'available' }
  	update_list << {owner_id: 3, title: 'Tell me I am going to make it', description: 'Tell me I am going to make it', reward: 50, latitude: 37.7801091599731, longitude: -122.399052341834, duration: '13.1166666666667', status: 'available' }
  	update_list << {owner_id: 4, title: 'Need to borrow a tie', description: 'I got an interview and I do not own a tie', reward: 100, latitude: 37.7772987155416, longitude: -122.411971575885, duration: '7.86666666666667', status: 'available' }
  	update_list << {owner_id: 5, title: 'Review my resume', description: 'Help me review a developer resume', reward: 300, latitude: 37.7735966886978, longitude: -122.405713852462, duration: '7.55', status: 'available' }
  	update_list << {owner_id: 3, title: 'Review my essay', description: 'Review my high school essay', reward: 250, latitude: 37.7655405319993, longitude: -122.402151515939, duration: '23.5166666666667', status: 'available' }
  	update_list << {owner_id: 5, title: 'Review college admin essay', description: 'I need someone to help me review my college ', reward: 450, latitude: 37.780796137048, longitude: -122.404507769418, duration: '4.98333333333333', status: 'available' }
  	update_list << {owner_id: 2, title: 'Try out Local Bounties demo', description: 'Just try it out', reward: 25, latitude: 37.77100455, longitude: -122.4038, duration: '1.03333333333333', status: 'available' }
    update_list.each do |obj|
	    Bounty.create(obj)
	    sleep(Random.rand(10) / 2.0)
	  end
  end
end

