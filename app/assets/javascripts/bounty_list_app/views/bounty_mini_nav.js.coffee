Bounty.BountyListApp.Views.BountyMiniNav = Support.CompositeView.extend

  template: JST['bounty_list_app/bounty_mini_nav']
  templatePlusOne: JST['bounty_list_app/plus_one']
  className: 'bounty-mini-nav'

  events:
    'click .nav-item' : 'selectNavItem'

  initialize: ->
    @active_nav_item = '1'
    @in_progress_count = 0

    @listenTo(Bounty.BountyListApp.vent, 'mini-nav:show-available', @showAvailable)
    @listenTo(Bounty.BountyListApp.vent, 'mini-nav:show-in-progress', @showInProgress)
    @listenTo(Bounty.BountyListApp.vent, 'mini-nav:show-completed', @showCompleted)

    @listenTo(Bounty.BountyListApp.in_progress_bounties_collection, 'add', @updateInProgressCount)
    @listenTo(Bounty.BountyListApp.in_progress_bounties_collection, 'remove', @updateInProgressCount)

    @listenTo(Bounty.BountyListApp.available_bounties_collection, 'add', @showIncrementOfAvailable)
    @listenTo(Bounty.BountyListApp.in_progress_bounties_collection, 'add', @showIncrementOfInProgress)
    @listenTo(Bounty.BountyListApp.completed_bounties_collection, 'add', @showIncrementOfCompleted)

  showAvailable: ->
    @selectNavItem({ value: '1'})

  showInProgress: ->
    @selectNavItem({ value: '2'})

  showCompleted: ->
    @selectNavItem({ value: '3'})

  updateInProgressCount: ->
    @in_progress_count = Bounty.BountyListApp.in_progress_bounties_collection.length
    @render()

  showIncrementOfAvailable: ->
    count_box = @$el.find('#1 .plus-one')

    count_box.fadeIn(100, () ->
      count_box.delay(500).fadeOut(100)
    )

  showIncrementOfInProgress: ->
    count_box = @$el.find('#2 .plus-one')

    count_box.fadeIn(100, () ->
      count_box.delay(500).fadeOut(100)
    )

  showIncrementOfCompleted: ->
    count_box = @$el.find('#3 .plus-one')

    count_box.fadeIn(100, () ->
      count_box.delay(500).fadeOut(100)
    )

  render: ->
    @$el.html(@template({ active_nav_item: @active_nav_item, in_progress_count: @in_progress_count }))
    if @in_progress_count == 0
      @$el.find('.in-progress-count-box').hide()
    @$el.find('#' + @active_nav_item).addClass("active")
    @$el

  selectNavItem: (options) ->
    if options.target?
      @active_nav_item = $(options.target).attr('id')
    else
      @active_nav_item = options.value
    @render()

    # trigger the event
    switch @active_nav_item
      when '1'
        event = 'show-available'
      when '2'
        event = 'show-in-progress'
      when '3'
        event = 'show-completed'
    Bounty.BountyListApp.vent.trigger('bounty-list:' + event)
