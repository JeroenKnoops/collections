class Collections.Routers.Collection extends Backbone.Router
  routes:
    '': 'index'
    'items/:id': 'show'

  initialize: ->
    @collection = new Collections.Collections.Items()
    @collection.reset($('#container').data('items'))
    @breadcrumb = new Collections.Models.Breadcrumb()

  index: ->
    index_view = new Collections.Views.ItemsIndex(collection: @collection)
    breadcrumb_view = new Collections.Views.BreadcrumbIndex(model: @breadcrumb)
    $('#container').html(index_view.render().el)
    $('#breadcrumb').html(breadcrumb_view.render().el)
    @breadcrumb.start()
	
  show: (id) ->
    item = @collection.get(id)
    view = new Collections.Views.ItemDetails(model: item)
    if $('#item').size() == 0
      @index(this)
    @breadcrumb.update(item)
    item.highlight()
    $('#item').html(view.render().el)
    
  	
