Bounty.BountyListApp.Views.BountyList = Support.CompositeView.extend

  className: 'bounty-list'

  render: ->
    @renderListItems()
    @$el

  initialize: ->
    @collection = Bounty.BountyListApp.bounty_collection
    @listenTo(@collection, 'add', @addListItem)
    @listenTo(Bounty.BountyListApp.vent, 'bounty-list:add', @addNewListItem)
    # @listenTo(@collection, 'change', @renderListItems)

  addNewListItem: ->
    @collection.add({ title: 'Sample item' })

  addListItem: (model) ->
    list_item_view = new Bounty.BountyListApp.Views.BountyListItem(model: model)
    @renderChild(list_item_view)
    $(list_item_view.el).find('.content').hide()
    $(list_item_view.el).find('.bounty-list-item').hide()
    $(list_item_view.el).hide()
    @$el.prepend(list_item_view.el)
    $(list_item_view.el).slideDown(200, 'swing')
    # $(list_item_view.el).find('.bounty-list-item').fadeIn()
    e = $(list_item_view.el).find('.bounty-list-item')
    # e.effect("scale", { from: { height: 40, width: 80}, percent: 100, direction: 'both' }, 1000)
    e.delay(400).effect("scale", {origin:['middle','center'], from:{width:e.width()*.8,height:e.height()*.8}, percent: 100, direction: 'both', easing: "swing" }, 100, () ->
      console.log('done')
      e.find('.content').fadeIn(300)
    )
    # e.find('.content').promise().done( ()->
    #   e.fadeIn(300)
    # )

    # .effect("scale", { from: { height: 40, width: 80}, percent: 100, direction: 'both' }, 1000)

  renderListItems: ->
    _this = @
    @$el.empty()
    @collection.each((model) ->
      console.log(list_item)
      list_item_view = new Bounty.BountyListApp.Views.BountyListItem(model: model)
      _this.renderChild(list_item_view)
      $(_this.el).append(list_item_view.el)
    )