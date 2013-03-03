Bounty.BountyListApp.Views.BountyListItem = Support.CompositeView.extend
  
  className: 'bounty-list-item'

  template: JST['bounty_list_app/bounty_list_item']
  templateRewardBox: JST['bounty_list_app/reward_box']

  render: ->
    @$el.html(@template(@model.toJSON()))
    @renderRewardBox()
    @$el

  renderRewardBox: ->
    @$el.find('.reward').html(@templateRewardBox(@model.toJSON()))
    @$el