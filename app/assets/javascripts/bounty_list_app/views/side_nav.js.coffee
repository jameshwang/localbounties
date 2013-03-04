Bounty.BountyListApp.Views.SideNav = Support.CompositeView.extend

  template: JST['bounty_list_app/side_nav']

  className: 'side-nav'
  tagName: 'ul'

  events:
    'click .side-nav-item' : 'select'

  render: ->
    @$el.html(@template())

  select: (e) ->
    if e?
      e.preventDefault()

    target = $(e).attr('id')

    switch target
      when '1'
        event = 'show-bounty-hunter'
      when '2'
        event = 'show-bounty-hunter'
      when '3'
        event = 'show-my-account'
      when '4'
        event = 'show-sign-out'
    Bounty.BountyListApp.vent.trigger('content-panel:' + event)

