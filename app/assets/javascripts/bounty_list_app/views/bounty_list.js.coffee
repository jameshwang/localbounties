Bounty.BountyListApp.Views.BountyList = Support.CompositeView.extend

  className: 'bounty-list'
  template: JST['bounty_list_app/bounty_list']

  render: ->
    @$el.html(@template())
    @renderListItems()
    @showBountyMap()
    @$el

  initialize: ->
    @collection = Bounty.BountyListApp.available_bounties_collection
    @bindUniversalEvents()
    @bindEvents()


  bindUniversalEvents: ->
    @listenTo(Bounty.BountyListApp.vent, 'bounty-list:show-available', _.bind(@showAvailable, @))
    @listenTo(Bounty.BountyListApp.vent, 'bounty-list:show-in-progress', _.bind(@showInProgress, @))
    @listenTo(Bounty.BountyListApp.vent, 'bounty-list:show-completed', _.bind(@showCompleted, @))

    @listenTo(Bounty.BountyListApp.vent, 'bounty-list:show-bounty-map', @showBountyMap)
    @listenTo(Bounty.BountyListApp.vent, 'bounty-list:hide-bounty-map', @hideBountyMap)
    
    # to be deleted
    @listenTo(Bounty.BountyListApp.vent, 'bounty-list:add', _.bind(@addNewListItem, @))

  unbindEvents: ->
    @stopListening(@collection)

  bindEvents: ->
    @listenTo(@collection, 'add', @addListItem)
    # @listenTo(Bounty.BountyListApp.vent, 'bounty-list:add', @addNewListItem)

  showBountyMap: ->
    @$el.find('#map-container').slideDown(200, _.bind(@renderMap,@))

  renderMap: ->
    @map_view ?= new Bounty.BountyListApp.Views.BountyMap()
    @renderChild(@map_view)
    @$el.find('#map-container').html(@map_view.el)

  hideBountyMap: ->
    @$el.find('#map-container').slideUp(200)

  showAvailable: ->
    console.log('show avail')
    @unbindEvents()
    @collection = Bounty.BountyListApp.available_bounties_collection
    @bindEvents()
    @renderListItems()

  showInProgress: ->
    @unbindEvents()
    @collection = Bounty.BountyListApp.in_progress_bounties_collection
    @bindEvents()
    @renderListItems()

  showCompleted: ->
    @unbindEvents()
    @collection = Bounty.BountyListApp.completed_bounties_collection
    @bindEvents()
    @renderListItems()

  addNewListItem: ->
    @collection.add({ title: 'Sample item' })

  addListItem: (model) ->
    list_item_view = new Bounty.BountyListApp.Views.BountyListItem(model: model)
    @renderChild(list_item_view)
    $(list_item_view.el).find('.content').hide()
    $(list_item_view.el).find('.bounty-list-item').hide()
    $(list_item_view.el).hide()
    @$el.find('#list-container').prepend(list_item_view.el)
    $(list_item_view.el).slideDown(200, 'swing')
    # $(list_item_view.el).find('.bounty-list-item').fadeIn()
    e = $(list_item_view.el).find('.bounty-list-item')
    # e.effect("scale", { from: { height: 40, width: 80}, percent: 100, direction: 'both' }, 1000)
    e.delay(400).effect("scale", {origin:['middle','center'], from:{width:e.width()*.8,height:e.height()*.8}, percent: 100, direction: 'both', easing: "swing" }, 100, () ->
      e.find('.content').fadeIn(300)
    )
    # e.find('.content').promise().done( ()->
    #   e.fadeIn(300)
    # )

    # .effect("scale", { from: { height: 40, width: 80}, percent: 100, direction: 'both' }, 1000)

  renderListItems: ->
    _this = @
    @$el.find('#list-container').empty()
    @collection.each((model) ->
      list_item_view = new Bounty.BountyListApp.Views.BountyListItem(model: model)
      _this.renderChild(list_item_view)
      $(_this.el).find('#list-container').append(list_item_view.el)
    )