Bounty.BountyListApp.Views.BountyMiniNav = Support.CompositeView.extend

  template: JST['bounty_list_app/bounty_mini_nav']
  className: 'bounty-mini-nav'

  render: ->
    @$el.html(@template())