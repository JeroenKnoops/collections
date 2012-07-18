class Collections.Models.Navigation extends Backbone.Model
  
  start: ->
    @set(category: "index", id: "")

  update: (item)->
    @set(category: item.get('brand'), id: item.get('title'))
      
      