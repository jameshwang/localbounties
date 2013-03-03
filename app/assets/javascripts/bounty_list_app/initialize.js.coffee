window.Bounty ?= {}

Bounty.BountyListApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: (options) ->
    @firebase_url = options.firebase_url
    @bounty_collection = new Bounty.BountyListApp.Collections.Bounties()

    @vent = _.extend({}, Backbone.Events, cid: "dispatcher")  
    @router = new Bounty.BountyListApp.Routers.Main()
    Backbone.history.start({})

    @app = new Bounty.BountyListApp.Views.AppView