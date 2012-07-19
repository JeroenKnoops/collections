class Collections.Routers.Items extends Backbone.Router
  routes:
    '': 'index'
    'items/:id': 'show'

  initialize: ->
    @collection = new Collections.Collections.Items()
    @collection.reset($('#container').data('items'))
    @navigation = new Collections.Models.Navigation()

  index: ->
    index_view = new Collections.Views.ItemsIndex(collection: @collection)
    navigation_view = new Collections.Views.NavigationIndex(model: @navigation)
    $('#container').html(index_view.render().el)
    $('#navigation').html(navigation_view.render().el)
    @navigation.start()
	
  show: (id) ->
    item = @collection.get(id)
    view = new Collections.Views.ItemDetails(model: item)
    if $('#item').size() == 0
      @index(this)
    @navigation.update(item)
    item.highlight()
    $('#item').html(view.render().el)
    
  	
