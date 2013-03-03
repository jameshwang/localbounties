class Bounty.BountyListApp.Collections.Bounties extends Backbone.Firebase.Collection

  model: Bounty.BountyListApp.Models.Bounty

  firebase: ->
    Bounty.BountyListApp.firebase_url