Bounty.BountyListApp.Views.SideNav = Support.CompositeView.extend

  template: JST['bounty_list_app/side_nav']

  className: 'side-nav'
  tagName: 'ul'

  render: ->
    @$el.html(@template())