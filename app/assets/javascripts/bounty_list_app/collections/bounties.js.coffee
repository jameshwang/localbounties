class Bounty.BountyListApp.Collections.Bounties extends Backbone.Firebase.Collection

  model: Bounty.BountyListApp.Models.Bounty

  firebase: ->
    # switch @type
    #   when 'available_bounties'
    #     console.log('avail]')
    #     @api_endpoint = '/bounties/available'
    #   when 'in_progress_bounties'
    #     @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/in-progress'
    #   when 'completed_bounties'
    #     @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/completed'
    #   when 'available_issued_bounties'
    #     @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/available-issued'
    #   when 'in_progress_issued_bounties'
    #     @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/in-progress-issued'
    #   when 'completed_issued_bounties'
    #     @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/completed-issued'
    # @api_endpoint = '/bounties/available'
    # console.log('go')
    @api_endpoint = '/bounties/available'
    Bounty.BountyListApp.firebase_url + @api_endpoint

class Bounty.BountyListApp.Collections.BountiesInProgress extends Backbone.Firebase.Collection

  model: Bounty.BountyListApp.Models.Bounty

  firebase: ->
    @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/in-progress'
    Bounty.BountyListApp.firebase_url + @api_endpoint

class Bounty.BountyListApp.Collections.BountiesCompleted extends Backbone.Firebase.Collection

  model: Bounty.BountyListApp.Models.Bounty

  firebase: ->
    @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/completed'
    Bounty.BountyListApp.firebase_url + @api_endpoint

class Bounty.BountyListApp.Collections.IssuedBountiesCompleted extends Backbone.Firebase.Collection

  model: Bounty.BountyListApp.Models.Bounty

  firebase: ->
    @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/available-issued'
    Bounty.BountyListApp.firebase_url + @api_endpoint

class Bounty.BountyListApp.Collections.IssuedBountiesCompleted extends Backbone.Firebase.Collection

  model: Bounty.BountyListApp.Models.Bounty

  firebase: ->
    @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/in-progress-issued'
    Bounty.BountyListApp.firebase_url + @api_endpoint

class Bounty.BountyListApp.Collections.IssuedBountiesCompleted extends Backbone.Firebase.Collection

  model: Bounty.BountyListApp.Models.Bounty

  firebase: ->
    @api_endpoint = '/users/' + Bounty.BountyListApp.user.id + '/bounties/completed-issued'
    Bounty.BountyListApp.firebase_url + @api_endpoint