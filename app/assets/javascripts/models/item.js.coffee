class Collections.Models.Item extends Backbone.Model

  highlight: ->
    @trigger('highlight')