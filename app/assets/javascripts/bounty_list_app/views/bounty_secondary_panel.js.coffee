Bounty.BountyListApp.Views.BountySecondaryPanel = Support.CompositeView.extend

  initialize: ->
    @listenTo(Bounty.BountyListApp.vent, 'secondary-panel:show-single-bounty', _.bind(@showSingleBounty, @))

  render: ->
    @$el

  showSingleBounty: (options) ->
    @single_view = new Bounty.BountyListApp.Views.BountySingle({model: options.model})
    @renderChild(@single_view)
    $('#bounty-secondary-panel').html(@single_view.el)
    @$el.html(@single_view.el)