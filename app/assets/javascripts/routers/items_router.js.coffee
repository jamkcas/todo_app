class Todo.Routers.Items extends Backbone.Router

  routes:
    '': 'index'
    'items/:id': 'show'

  initialize: ->
    this.itemsCol = new Todo.Collections.Items()
    this.itemsCol.fetch({reset:true})

  index: ->
    listView = new Todo.Views.ItemsIndex(collection: this.itemsCol)
    $('#container').html(listView.render().el)

  show: (id) ->
    alert "Item #{id}"