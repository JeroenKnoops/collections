class Collections.Views.Breadcrumb extends Backbone.View
  template: JST['breadcrumb/part']
  tagName: 'li'
  
  events:
    'click': 'showItem'

  initialize: ->
    @model.on('change', @render, this)
    
  showItem: ->
    @navigation.update(@model)
    Backbone.history.navigate("items/#{@model.get('id')}", true)

  render: ->
    $(@el).html(@template(breadcrumb: @model))
    this
