class Collections.Views.BreadcrumbIndex extends Backbone.View

  template: JST['breadcrumb/breadcrumb']

  initialize: ->
    @model.on('change', @updateBreadcrumb, this)

  render: ->
    $(@el).html(@template(item: @model))
    this

  updateBreadcrumb: (breadcrumb) =>
    view = new Collections.Views.Breadcrumb(model: breadcrumb)
    @$('#breadcrumbs').html(view.render().el)
