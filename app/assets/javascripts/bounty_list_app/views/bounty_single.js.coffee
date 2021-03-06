Bounty.BountyListApp.Views.BountySingle = Support.CompositeView.extend

  className: 'bounty-single'
  template: JST['bounty_list_app/bounty_single']
  templateRewardBox: JST['bounty_list_app/reward_box']

  events:
    'click .button-accept' : 'accept'
    'click .button-complete' : 'complete'

  initialize: ->
    # @listenTo(@model, 'change:status', _.bind(@dropActionbox, @))

  render: ->
    @$el.html(@template(@model.toJSON()))
    @$el.find('.reward').html(@templateRewardBox(@model.toJSON()))
    if @model.get('status') == 'in_progress'
      @$el.find('.button-accept').html('Bounty accepted!')

      @$el.find('.completion-box').show()

      due_date = new Date(@model.get('accepted_at'))
      duration = @model.get('duration')
      due_date.setMinutes(due_date.getMinutes() + parseInt(duration))
      @$el.find('.countdown-box').countdown({until: due_date,layout: "<span class='minutes'>{mnn}</span>:<span class='seconds'>{snn}</span> "})
    @$el

  accept: ->
    # if @model.get('status') == 'in_progress'
    @$el.find('.button-accept').html('Bounty accepted!')
    Bounty.BountyListApp.vent.trigger('mini-nav:show-in-progress')

    callback = () ->
      Bounty.BountyListApp.vent.trigger('secondary-panel:show-recent-in-progress')

    _this = @
    @$el.find('.completion-box').slideDown(200, () ->
      _this.model.accept(callback)
    )

  complete: ->
    @$el.find('.button-complete').html('Bounty completed!')
    @$el.find('.countdown-box').countdown('pause')

    verification_message = @$el.find('.verification-message').val()
    Bounty.BountyListApp.vent.trigger('mini-nav:show-completed')

    callback = () ->
      Bounty.BountyListApp.vent.trigger('secondary-panel:show-recent-completed')
      
    @model.verify(verification_message, callback)
