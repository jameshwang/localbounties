Bounty.BountyListApp.Views.BountySingle = Support.CompositeView.extend

  className: 'bounty-single'
  template: JST['bounty_list_app/bounty_single']
  templateRewardBox: JST['bounty_list_app/reward_box']

  events:
    'click .button-accept' : 'accept'

  initialize: ->
    # @listenTo(@model, 'change:status', _.bind(@dropActionbox, @))

  render: ->
    @$el.html(@template(@model.toJSON()))
    @$el.find('.reward').html(@templateRewardBox(@model.toJSON()))
    if @model.get('status') == 'in_progress'
      @$el.find('.button-accept').html('Bounty accepted!')
    #   @$el.find('.additional-action-info').show()
    @$el

  accept: ->
    # if @model.get('status') == 'in_progress'
    @$el.find('.button-accept').html('Bounty accepted!')
    @model.accept()
      # @$el.find('.additional-action-info').slideDown(300)

