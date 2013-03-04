Bounty.BountyListApp.Views.BountyMiniNav = Support.CompositeView.extend

  template: JST['bounty_list_app/bounty_mini_nav']
  templatePlusOne: JST['bounty_list_app/plus_one']
  className: 'bounty-mini-nav'

  events:
    'click .nav-item' : 'selectNavItem'

  initialize: ->
    @active_nav_item = '1'
    @in_progress_count = 0

    @listenTo(Bounty.BountyListApp.in_progress_bounties_collection, 'add', @updateInProgressCount)
    @listenTo(Bounty.BountyListApp.in_progress_bounties_collection, 'remove', @updateInProgressCount)

    @listenTo(Bounty.BountyListApp.available_bounties_collection, 'add', @showIncrementOfAvailable)
    @listenTo(Bounty.BountyListApp.in_progress_bounties_collection, 'add', @showIncrementOfInProgress)
    @listenTo(Bounty.BountyListApp.completed_bounties_collection, 'add', @showIncrementOfCompleted)

  updateInProgressCount: ->
    @in_progress_count = Bounty.BountyListApp.in_progress_bounties_collection.length
    console.log(@in_progress_count)
    @render()

  showIncrementOfAvailable: ->
    count_box = @$el.find('#1 .plus-one')

    count_box.fadeIn(100, () ->
      count_box.delay(200).fadeOut(100)
    )

  showIncrementOfInProgress: ->
    count_box = @$el.find('#2 .plus-one')

    count_box.fadeIn(100, () ->
      count_box.delay(200).fadeOut(100)
    )

  showIncrementOfCompleted: ->
    count_box = @$el.find('#3 .plus-one')

    count_box.fadeIn(100, () ->
      count_box.delay(200).fadeOut(100)
    )

  render: ->
    @$el.html(@template({ active_nav_item: @active_nav_item, in_progress_count: @in_progress_count }))
    if @in_progress_count == 0
      @$el.find('.in-progress-count-box').hide()
    @$el.find('#' + @active_nav_item).addClass("active")
    @$el

  selectNavItem: (e) ->
    @active_nav_item = $(e.target).attr('id')
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
