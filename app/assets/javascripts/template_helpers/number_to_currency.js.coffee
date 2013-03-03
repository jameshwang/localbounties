Handlebars.registerHelper('number_to_currency_special', (context, options) ->
  if context?
    # this function converts an integer amount of cents into a us dollar formatted string
    context = '<span class="dollar-sign">$</span>' + '<span class="dollar-amount">'  + context.toString().substring(0, -2) + '</span>' + '<span class="cents-amount">.' + (parseFloat(context.toString().slice(-2)) / 100).toFixed(2) + '</span>'  
    return context
)

Handlebars.registerHelper('dollar_amount', (context, options) ->
  if context?
    # this function converts an integer amount of cents into a us dollar formatted string
    context = context.toString().substring(0, context.toString().length - 2)
    # if context == ''
      # context = '0' 
    return context
)

Handlebars.registerHelper('cents_amount', (context, options) ->
  if context?
    # this function converts an integer amount of cents into a us dollar formatted string
    context = (parseFloat(context.toString().slice(-2)) / 100).toFixed(2).toString().slice(-3)
    return context
)

Handlebars.registerHelper('number_to_currency_dollar', (context, options) ->
  if context?
    context = '$' + (parseInt(context).toFixed(0)).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ",")  
)

Handlebars.registerHelper('number_to_standard_comma', (context, options) ->
  if context?
    while (/(\d+)(\d{3})/.test(context.toString()))
      context = context.toString().replace(/(\d+)(\d{3})/, '$1'+','+'$2')
    return context
)