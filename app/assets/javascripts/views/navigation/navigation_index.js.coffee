class Collections.Views.NavigationIndex extends Backbone.View

  template: JST['navigation/navigation']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('change', @updateNavigation, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@updateNavigation)
    this

  updateNavigation: (navigation) =>
    view = new Collections.Views.Navigation(model: navigation)
    @$('#navigations').append(view.render().el)
