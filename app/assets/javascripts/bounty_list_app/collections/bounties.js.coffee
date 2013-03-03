class Bounty.BountyList.Collections.Bounties extends Backbone.Collection

  model: Bounty.BountyList.Models.Bounty

  url: ->
    # need to eventually specify a url here... from firebase?
    return ''