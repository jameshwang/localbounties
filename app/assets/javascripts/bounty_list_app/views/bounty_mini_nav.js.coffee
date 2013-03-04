Bounty.BountyListApp.Views.BountyMiniNav = Support.CompositeView.extend

  template: JST['bounty_list_app/bounty_mini_nav']
  className: 'bounty-mini-nav'

  events:
    'click .nav-item' : 'selectNavItem'

  initialize: ->
    @active_nav_item = '1'

  render: ->
    @$el.html(@template({ active_nav_item: @active_nav_item }))
    @$el.find('#' + @active_nav_item).addClass("active")
    @$el

  selectNavItem: (e) ->
    @active_nav_item = $(e.target).attr('id')
    @render()

    # trigger the event
    switch @active_nav_item
      when '1'
        event = 'show-available'
      when '2'
        event = 'show-in-progress'
      when '3'
        event = 'show-completed'
    Bounty.BountyListApp.vent.trigger('bounty-list:' + event)
