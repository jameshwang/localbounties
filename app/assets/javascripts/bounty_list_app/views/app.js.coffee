Bounty.BountyListApp.Views.AppView = Support.CompositeView.extend
  
  initialize: ->
    # intialize and bind the subsections

    # Bounties Content Panel
    @bounty_content_panel_view = new Bounty.BountyListApp.Views.BountyContentPanel()

    @bounty_secondary_panel_view = new Bounty.BountyListApp.Views.BountySecondaryPanel()
    @bounty_secondary_panel_view.setElement('#bounty-secondary-panel')
    @renderChild(@bounty_secondary_panel_view)

    # side nav
    @side_nav_view = new Bounty.BountyListApp.Views.SideNav()
    @side_nav_view.setElement($('#side-nav'))
    @renderChild(@side_nav_view)