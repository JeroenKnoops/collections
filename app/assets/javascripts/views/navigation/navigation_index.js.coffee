class Collections.Views.NavigationIndex extends Backbone.View

  template: JST['navigation/navigation']

  initialize: ->
    @model.on('change', @updateNavigation, this)

  render: ->
    $(@el).html(@template(item: @model))
    this

  updateNavigation: (navigation) =>
    view = new Collections.Views.Navigation(model: navigation)
    @$('#navigations').html(view.render().el)
