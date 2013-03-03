Bounty.BountyList.App.Views.AppView = Support.CompositeView.extend
  
  initialize: ->
    # intialize and bind the subsections

    # Bounties Content Panel
    @bounty_content_panel = new Bounty.BountyList.App.Views.BountyContentPanel()

