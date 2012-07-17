class Collections.Routers.Items extends Backbone.Router
  routes:
    '': 'index'
    'items/:id': 'show'

  initialize: ->
    @collection = new Collections.Collections.Items()
    @collection.fetch()

  index: ->
    view = new Collections.Views.ItemsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Item #{id}"
  	
