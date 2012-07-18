class Collections.Models.Navigation extends Backbone.Model
  
  update: (item)->
    @set(category: item.get('brand'), id: item.get('title'))
      