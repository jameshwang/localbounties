Bounty.BountyListApp.Views.BountySingle = Support.CompositeView.extend

  className: 'bounty-single'
  template: JST['bounty_list_app/bounty_single']
  templateRewardBox: JST['bounty_list_app/reward_box']

  events:
    'click .button-accept' : 'accept'
    'click .verify-button' : 'verify'

  initialize: ->
    # @listenTo(@model, 'change:status', _.bind(@dropActionbox, @))

  render: ->
    @$el.html(@template(@model.toJSON()))
    @$el.find('.reward').html(@templateRewardBox(@model.toJSON()))
    if @model.get('status') == 'in_progress'
      @$el.find('.button-accept').html('Bounty accepted!')
      @$el.find('.verification-box').show()
    @$el

  accept: ->
    # if @model.get('status') == 'in_progress'
    @$el.find('.button-accept').html('Bounty accepted!')

    callback = () ->
      Bounty.BountyListApp.vent.trigger('secondary-panel:show-recent-in-progress')

    _this = @
    @$el.find('.verification-box').slideDown(200, () ->
      _this.model.accept(callback)
    )

  verify: ->
    console.log('verify')
    @model.verify()