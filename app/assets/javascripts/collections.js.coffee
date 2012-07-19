window.Collections =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Collections.Routers.Collection()
    Backbone.history.start(pushState: true)
	  

$(document).ready ->
  Collections.init()
