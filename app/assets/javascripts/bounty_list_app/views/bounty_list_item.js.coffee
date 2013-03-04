Bounty.BountyListApp.Views.BountyListItem = Support.CompositeView.extend
  
  className: 'bounty-list-item-container'

  template: JST['bounty_list_app/bounty_list_item']
  templateRewardBox: JST['bounty_list_app/reward_box']

  events:
    'click' : 'showInSecondary'

  initialize: ->
    # @listenTo(@model, 'change', @render)
    @listenTo(@model, 'remove', @disable)

  disable: ->
    @$el.find('.bounty-list-item').addClass('disabled')
  # removeItem: ->
  #   @()
  #   @remove()
  #   console.log('go away!!')


  render: ->
    @$el.html(@template(@model.toJSON()))
    @renderRewardBox()
    @$el

  renderRewardBox: ->
    @$el.find('.reward').html(@templateRewardBox(@model.toJSON()))
    @$el

  showInSecondary: ->
    console.log('show')
    Bounty.BountyListApp.vent.trigger('secondary-panel:show-single-bounty', {model: @model})