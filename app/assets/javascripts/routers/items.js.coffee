class Collections.Routers.Items extends Backbone.Router
  routes:
    '': 'index'
    'items/:id': 'show'

  initialize: ->
    @collection = new Collections.Collections.Items()
    @collection.fetch()
    @navigation = new Collections.Models.Navigation()
    @navigation.set category: "index"

  index: ->
    index_view = new Collections.Views.ItemsIndex(collection: @collection)
    navigation_view = new Collections.Views.Navigation(model: @navigation)
    $('#container').html(index_view.render().el)
    $('#navigation').html(navigation_view.render().el)
	
  show: (id) ->
    item = @collection.get(id)
    @navigation.update(item)
    view = new Collections.Views.ItemDetails(model: item)
    $('#item').html(view.render().el)
  	
