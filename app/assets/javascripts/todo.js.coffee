window.Todo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Todo.Routers.Items
    Backbone.history.start(pushState: true)

$(document).ready ->
  Todo.initialize()
