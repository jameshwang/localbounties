Bounty.BountyListApp.Views.BountyContentPanel = Support.CompositeView.extend

  initialize: ->
    # @listenTo(Bounty.BountyList.vent, 'content-panel:show-available-bounties', @showAvailableBounties())
    # @listenTo(Bounty.BountyList.vent, 'content-panel:show-in-progress-bounties', @showInProgressBounties())
    # @listenTo(Bounty.BountyList.vent, 'content-panel:show-completed-bounties', @showCompletedBounties())

    # @listenTo(Bounty.BountyList.vent, 'content-panel:show-individual-bounty', @showIndividualBounty())
    
    # to start, show available bounties
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

  showInProgressBounties: ->

  showCompletedBounties: ->

  showIndividualBounty: (model) ->