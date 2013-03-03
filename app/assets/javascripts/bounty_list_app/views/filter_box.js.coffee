Bounty.BountyListApp.Views.FilterBox = Support.CompositeView.extend

  template: JST['bounty_list_app/filter_box']

  className: 'filter-box'

  render: ->
    @$el.html(@template())