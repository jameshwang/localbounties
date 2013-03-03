class Bounty.BountyListApp.Collections.Bounties extends Backbone.Collection

  model: Bounty.BountyListApp.Models.Bounty

  url: ->
    # need to eventually specify a url here... from firebase?
    return ''