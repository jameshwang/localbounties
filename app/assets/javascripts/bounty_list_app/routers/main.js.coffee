Bounty.BountyListApp.Routers.Main = Backbone.Router.extend

  routes:
    ""              : "overview"

  overview: ->

  # initialize: (options) ->
  #   @elPrimary = $('#primary-panel-container')
  #   @elSecondary = $('#secondary-panel-container')
  #   @elContent = $('#content-panel-container')
      
  #   @initializeContentPanel()
  #   @initializePrimaryPanel()
    
  # initializePrimaryPanel: ->
  #   @primaryPanel = new Bravo.Views.PrimaryPanel()
  #   @elPrimary.append(@primaryPanel.render())

  # initializeContentPanel: ->
  #   @contentPanel = new Bravo.Views.ContentPanel()
  #   @elContent.append(@contentPanel.render())

  # initializeLaunchBar: ->
  #   @launchBar = new Bravo.Views.LaunchBar()
  #   @elContent.append(@launchBar.render())

  # donation_page: ->
  #   Bravo.dispatcher.trigger('content-panel:render', 'ContentPanelLaunchPage')
  #   Bravo.dispatcher.trigger('content-panel-secondary:render', 'ContentPanelSecondaryLaunchPageDonationPage')