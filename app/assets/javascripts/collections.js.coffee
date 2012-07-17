window.Collections =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Collections.Routers.Items()
    Backbone.history.start(pushState: true)
	  

$(document).ready ->
  Collections.init()
