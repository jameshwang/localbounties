Bounty.BountyListApp.Views.BountySingle = Support.CompositeView.extend

  className: 'bounty-single'
  template: JST['bounty_list_app/bounty_single']
  templateRewardBox: JST['bounty_list_app/reward_box']

  initialize: ->

  render: ->
    @$el.html(@template(@model.toJSON()))
    @$el.find('.reward').html(@templateRewardBox(@model.toJSON()))
    @$el