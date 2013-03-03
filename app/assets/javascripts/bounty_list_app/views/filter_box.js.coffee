Bounty.BountyListApp.Views.FilterBox = Support.CompositeView.extend

  template: JST['bounty_list_app/filter_box']

  className: 'filter-box'

  events:
    'click .add-button' : 'add'

  render: ->
    @$el.html(@template())

  add: ->
    Bounty.BountyListApp.vent.trigger('bounty-list:add')