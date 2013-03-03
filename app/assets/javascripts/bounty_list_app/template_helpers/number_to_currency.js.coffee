Handlebars.registerHelper('number_to_currency', (context, options) ->
  if context?
    # this function converts an integer amount of cents into a us dollar formatted string
    context = '$' + (parseFloat(context) / 100).toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ",")  
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