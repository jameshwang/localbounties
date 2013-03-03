window.Bounty ?= {}

Bounty.BountyListApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: (options) ->
    @vent = _.extend({}, Backbone.Events, cid: "dispatcher")  
    @router = new PCM.Routers.Main()
    Backbone.history.start({})