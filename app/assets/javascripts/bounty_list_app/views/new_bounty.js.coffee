Bounty.BountyListApp.Views.NewBounty = Support.CompositeView.extend

  className: 'new-bounty'
  template: JST['bounty_list_app/new_bounty']

  events:
    'click .submit-button' : 'createNew'

  initialize: ->

  render: ->
    @$el.html(@template())
    @$el

  createNew: ->
    console.log('create')
    data = {}

    data.title = @$el.find('#title').val()
    data.description = @$el.find('#description').val()
    data.verification = @$el.find('#verification-process').val()
    data.reward = parseInt(@$el.find('#reward').val()) * 100
    data.duration = @$el.find('#duration').val()

    @model = new Bounty.BountyListApp.Models.Bounty(data)
    @model.save(
      success: ->
        console.log('successfuly!')
    )