class Bounty.BountyListApp.Models.Bounty extends Backbone.Model
  
  defaults:
    'reward' : 145
    'title' : 'Untitled'
    'description' : 'Please provide a description'
    'distance' : '.2'
    'minutes_since_issued' : 4

  accept: (success_callback) ->
    _this = @
    $.ajax '/api/bounties/' + @get('id') + '/accept',
      type: 'POST'
      dataType: 'json'
      error: (jqXHR, textStatus, errorThrown) ->
      success: (data, textStatus, jqXHR) ->
        success_callback.call()

  verify: () ->
    _this = @
    $.ajax '/api/bounties/' + @get('id') + '/complete',
      type: 'POST'
      dataType: 'json'
      error: (jqXHR, textStatus, errorThrown) ->
      success: (data, textStatus, jqXHR) ->

  url: ->
    if @isNew()
      '/api/bounties/'
    else
      '/api/bounties/' + @get('id')
  # create: ->
  #   _this = @
  #   $.ajax '/api/bounties/' + @get('id') + '/accept',
  #   type: 'POST'
  #   dataType: 'json'
  #   error: (jqXHR, textStatus, errorThrown) ->
  #   success: (data, textStatus, jqXHR) ->
  #     _this.set data
