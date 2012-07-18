class Collections.Views.Item extends Backbone.View
  template: JST['items/item']
  tagName: 'li'
  
  events:
    'click': 'showItem'

  initialize: ->
    @model.on('change', @render, this)
    
  showItem: (event) ->
    event.preventDefault()
    Backbone.history.navigate("items/#{@model.get('id')}", true)

  render: ->
    $(@el).html(@template(item: @model))
    this
