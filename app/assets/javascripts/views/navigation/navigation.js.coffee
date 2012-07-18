class Collections.Views.Navigation extends Backbone.View
  template: JST['navigation/part']
  tagName: 'li'
  
  events:
    'click': 'showItem'

  initialize: ->
    @model.on('change', @render, this)
    
  showItem: ->
    @navigation.update(@model)
    Backbone.history.navigate("items/#{@model.get('id')}", true)

  render: ->
    $(@el).html(@template(navigation: @model))
    this
