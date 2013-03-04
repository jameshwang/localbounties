window.Bounty ?= {}

Bounty.BountyListApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: (options) ->
    @firebase_url = options.firebase_url
    @user = options.user

    # build the collections

    @available_bounties_collection              = new Bounty.BountyListApp.Collections.Bounties()
    @in_progress_bounties_collection            = new Bounty.BountyListApp.Collections.BountiesInProgress()
    @completed_bounties_collection              = new Bounty.BountyListApp.Collections.BountiesCompleted()
    # @available_issued_bounties_collection       = new Bounty.BountyListApp.Collections.Bounties({ type: 'available_issued_bounties' })
    # @in_progress_issued_bounties_collection     = new Bounty.BountyListApp.Collections.Bounties({ type: 'in_progress_issued_bounties' })
    # @completed_issued_bounties_collection       = new Bounty.BountyListApp.Collections.Bounties({ type: 'completed_issued_bounties' })

    @vent = _.extend({}, Backbone.Events, cid: "dispatcher")  
    @router = new Bounty.BountyListApp.Routers.Main()
    Backbone.history.start({})

    @app = new Bounty.BountyListApp.Views.AppView