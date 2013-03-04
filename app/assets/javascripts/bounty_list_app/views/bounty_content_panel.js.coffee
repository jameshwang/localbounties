Bounty.BountyListApp.Views.BountyContentPanel = Support.CompositeView.extend

  initialize: ->
    @listenTo(Bounty.BountyListApp.vent, 'content-panel:show-bounty-list', @showBountyList)
    @listenTo(Bounty.BountyListApp.vent, 'content-panel:show-bounty-map', @showBountyMap)
    
    @listenTo(Bounty.BountyListApp.vent, 'content-panel:show-bounty-hunter', @showBountyMap)
    @listenTo(Bounty.BountyListApp.vent, 'content-panel:show-bounty-issuer', @showBountyMap)

    @showMiniNav()
    @showAvailableBounties()

  showMiniNav: ->
    @bounty_mini_nav = new Bounty.BountyListApp.Views.BountyMiniNav()
    @renderChild(@bounty_mini_nav)
    $('#bounty-mini-nav-container').append(@bounty_mini_nav.el)

  showAvailableBounties: ->
    # add the filter box
    @filter_box_view = new Bounty.BountyListApp.Views.FilterBox()
    @renderChild(@filter_box_view)
    $('#bounty-sub-content').append(@filter_box_view.el)

    # add the bounty list
    @bounty_list = new Bounty.BountyListApp.Views.BountyList()
    @renderChild(@bounty_list)
    $('#bounty-sub-content').append(@bounty_list.el)

  showBountyMap: ->
    console.log('show bounty map')

  showBountyList: ->
    console.log('show bounty list')