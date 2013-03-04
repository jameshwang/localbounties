Bounty.BountyListApp.Views.BountySecondaryPanel = Support.CompositeView.extend

  initialize: ->
    @listenTo(Bounty.BountyListApp.vent, 'secondary-panel:show-single-bounty', _.bind(@showSingleBounty, @))
    @listenTo(Bounty.BountyListApp.vent, 'secondary-panel:show-new-bounty', _.bind(@showNewBounty, @))
    
    _this = @
    $('#new-bounty-button').click( () ->
      _this.showNewBounty()
    )

  render: ->
    @$el

  showSingleBounty: (options) ->
    @single_view = new Bounty.BountyListApp.Views.BountySingle({model: options.model})
    @renderChild(@single_view)
    @$el.html(@single_view.el)

  showNewBounty: ->
    @new_bounty = new Bounty.BountyListApp.Views.NewBounty()
    @renderChild(@new_bounty)
    @$el.html(@new_bounty.el)