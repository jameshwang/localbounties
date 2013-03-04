Bounty.BountyListApp.Views.FilterBox = Support.CompositeView.extend

  template: JST['bounty_list_app/filter_box']

  className: 'filter-box'

  events:
    'click .add-button' : 'add'
    'click .button-map' : 'toggleMap'

  initialize: ->
    @show_map = true

  render: ->
    @$el.html(@template())

  add: ->
    Bounty.BountyListApp.vent.trigger('bounty-list:add')

  toggleMap: ->
    if @show_map == true
      @show_map = false
      @$el.find('.button-map').removeClass('active')
      Bounty.BountyListApp.vent.trigger('bounty-list:hide-bounty-map')
    else
      @show_map = true
      @$el.find('.button-map').addClass('active')
      Bounty.BountyListApp.vent.trigger('bounty-list:show-bounty-map')