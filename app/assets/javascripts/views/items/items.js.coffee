class Collections.Views.Item extends Backbone.View
  template: JST['items/item']
  tagName: 'li'
  className: 'list'
    
  events:
    'click': 'showItem'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightItem, this)
    
  showItem: (event) ->
    event.preventDefault()
    Backbone.history.navigate("items/#{@model.get('id')}", true)

  highlightItem: ->
    $('.list').removeClass('active')
    $(@el).addClass('active')
    
  render: ->
    $(@el).html(@template(item: @model))
    this
