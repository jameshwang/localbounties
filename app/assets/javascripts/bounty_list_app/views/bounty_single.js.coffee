Bounty.BountyListApp.Views.BountySingle = Support.CompositeView.extend

  className: 'bounty-single'
  template: JST['bounty_list_app/bounty_single']

  initialize: ->

  render: ->
    @$el.html(@template(@model.toJSON()))