# Bounty.BountyListApp.Views.BountyMap = Support.CompositeView.extend

#   className: 'bounty-map'

#   generateMap: (htmlId, initMapPoints, width, height) ->
#   this.listOfMarkers = [];
#   var iconColors = ['reward-b.png', 'reward-r.png',
#                     'reward-g.png', 'reward-y.png',
#                     'reward-lb.png'];
#   var that = this;
#   var getLocation = function () {
#     if (navigator.geolocation) {
#       navigator.geolocation.getCurrentPosition(showPosition);
#     } else {
#       x.html("Geolocation is not supported by this browser.");
#     }
#   };

#   var showPosition = function (position) {
#     // get lat and lon of current position and create google LatLng
#     lat = position.coords.latitude;
#     lon = position.coords.longitude;
#     latlon = new google.maps.LatLng(lat, lon);

#     mapholder.style.height = height + 'px';
#     mapholder.style.width = width + 'px';

#     var mapOptions = {
#       center: latlon,
#       zoom: 15,
#       mapTypeId: google.maps.MapTypeId.ROADMAP,
#       mapTypeControl: false,
#       navigationControlOptions: {
#         style: google.maps.NavigationControlStyle.SMALL
#       }
#     };

#     that.map = new google.maps.Map(document.getElementById(htmlId), mapOptions);

#     // Center location
#     var centerMarker = new google.maps.Marker({
#       position: latlon,
#       map: that.map,
#       title: "You are here!"
#     });

#     // Mark these locations
#     $.each(initMapPoints, function (index, value) {
#       var latlon = new google.maps.LatLng(value.lat, value.lon);
#       var marker = new google.maps.Marker({
#         position: latlon,
#         map: that.map,
#         icon: iconColors[parseInt(Math.random() * 5)]
#       });
#       that.listOfMarkers.push({googleMarker: marker, myMarker: value});
#     });
#   };
#   getLocation();

#   this.addMarker = function (myMarker) {
#     var latlon = new google.maps.LatLng(myMarker.lat, myMarker.lon);
#     var marker = new google.maps.Marker({
#       position: latlon,
#       map: this.map,
#       icon: iconColors[parseInt(Math.random() * 5)]
#     });
#     this.listOfMarkers.push({googleMarker: marker, myMarker: myMarker});
#   };
#   this.removeMarker = function (markerTitle) {
#     var that = this;
#     $.each(this.listOfMarkers, function (index, value) {
#       if (value.myMarker.title == markerTitle) {
#         // console.log(that.listOfMarkers.splice(index, 1));
#         that.listOfMarkers.splice(index, 1)[0].googleMarker.setMap(null);
#       }
#     });
#   }

# }