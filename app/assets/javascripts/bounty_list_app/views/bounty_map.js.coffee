Bounty.BountyListApp.Views.BountyMap = Support.CompositeView.extend

  className: 'bounty-map'

  render: ->
    @generateMap @el, [], 450, 300
    @$el

  generateMap: (element, initMapPoints, width, height) ->
    @listOfMarkers = []
    iconColors = ['reward-b.png', 'reward-r.png', 'reward-g.png', 'reward-y.png','reward-lb.png']
    _this = @

    @getLocation = () ->
      if (navigator.geolocation)
        navigator.geolocation.getCurrentPosition(@showPosition)
      else
        x.html("Geolocation is not supported by this browser.")

    @showPosition = (position) ->
      # get lat and lon of current position and create google LatLng
      lat = position.coords.latitude
      lon = position.coords.longitude
      latlon = new google.maps.LatLng(lat, lon)

      mapholder = element

      mapholder.style.height = height + 'px'
      mapholder.style.width = width + 'px'

      mapOptions =
        center: latlon
        zoom: 15
        mapTypeId: google.maps.MapTypeId.ROADMAP
        mapTypeControl: false
        navigationControlOptions:
          style: google.maps.NavigationControlStyle.SMALL

      _this.map = new google.maps.Map(mapholder, mapOptions)

      # Center location
      centerMarker = new google.maps.Marker(
        position: latlon
        map: _this.map
        title: "You are here!"
      )

      # Mark these locations
      $.each(initMapPoints, (index, value) ->
        latlon = new google.maps.LatLng(value.lat, value.lon)
        marker = new google.maps.Marker(
          position: latlon
          map: _this.map
          icon: iconColors[parseInt(Math.random() * 5)]
        )
        _this.listOfMarkers.push({googleMarker: marker, myMarker: value})
      )
    @getLocation()

    @addMarker = (myMarker) ->
      latlon = new google.maps.LatLng(myMarker.lat, myMarker.lon)
      marker = new google.maps.Marker(
        position: latlon
        map: _this.map
        icon: iconColors[parseInt(Math.random() * 5)]
      )
      @listOfMarkers.push({googleMarker: marker, myMarker: myMarker})

    @removeMarker = (markerTitle) ->
      _this = this
      $.each(@listOfMarkers, (index, value) ->
        if (value.myMarker.title == markerTitle)
          # console.log(that.listOfMarkers.splice(index, 1));
          _this.listOfMarkers.splice(index, 1)[0].googleMarker.setMap(null)
      )