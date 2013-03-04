Bounty.BountyListApp.Views.NewBounty = Support.CompositeView.extend

  className: 'new-single'
  template: JST['bounty_list_app/new_bounty']

  initialize: ->

  render: ->
    @$el.html(@template())
    @$el