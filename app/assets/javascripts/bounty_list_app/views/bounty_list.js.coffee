Bounty.BountyListApp.Views.BountyList = Support.CompositeView.extend

  className: 'bounty-list'

  render: ->
    @renderListItems()
    @$el

  initialize: ->
    @collection = Bounty.BountyListApp.bounty_collection

  renderListItems: ->
    _this = @
    @collection.each((list_item) ->
      console.log(list_item)
      list_item_view = new Bounty.BountyListApp.Views.BountyListItem(model: list_item)
      _this.renderChild(list_item_view)
      $(_this.el).append(list_item_view.el)
    )