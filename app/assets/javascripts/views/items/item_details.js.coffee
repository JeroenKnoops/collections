class Collections.Views.ItemDetails extends Backbone.View
  template: JST['items/details']
  
  render: ->
    $(@el).html(@template(item: @model))
    this