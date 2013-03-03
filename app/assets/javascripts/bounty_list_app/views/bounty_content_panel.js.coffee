Bounty.BountyList.App.Views.BountyContentPanel = Support.CompositeView.extend

  initialize: ->
    @listenTo(Bounty.BountyList.vent, 'content-panel:show-available-bounties', @showAvailableBounties())
    @listenTo(Bounty.BountyList.vent, 'content-panel:show-in-progress-bounties', @showInProgressBounties())
    @listenTo(Bounty.BountyList.vent, 'content-panel:show-completed-bounties', @showCompletedBounties())

    @listenTo(Bounty.BountyList.vent, 'content-panel:show-individual-bounty', @showIndividualBounty())
    
    # to start, show available bounties
    @showMiniNav()
    @showAvailableBounties()

  showMiniNav: ->    

  showAvailableBounties: ->
    # add the filter box
    @addFilterBox()

    # add the bounty list
    @addBountyList()

  showInProgressBounties: ->

  showCompletedBounties: ->

  showIndividualBounty: (model) ->

  addFilterBox: ->
    # @filter_box_view = 

  addBountyList: ->
    @bounty_list_view = new Bounty.BountyList.App.Views.BountyListView()
    # @render@bounty_list_view
  