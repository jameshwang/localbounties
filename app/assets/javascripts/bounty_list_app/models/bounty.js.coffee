class Bounty.BountyListApp.Models.Bounty extends Backbone.Model
  
  defaults:
    'reward' : 145
    'title' : 'Untitled'
    'description' : 'Please provide a description'
    'distance' : '.2'
    'minutes_since_issued' : 4

  accept: ->
    _this = @
    $.ajax '/api/bounties/' + @get('id') + '/accept',
    type: 'POST'
    dataType: 'json'
    error: (jqXHR, textStatus, errorThrown) ->
    success: (data, textStatus, jqXHR) ->
      _this.set data
