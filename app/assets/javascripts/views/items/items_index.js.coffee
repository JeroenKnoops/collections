class Collections.Views.ItemsIndex extends Backbone.View

  template: JST['items/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendItem, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendItem)
    this

  appendItem: (item) =>
    view = new Collections.Views.Item(model: item)
    @$('#items').append(view.render().el)
