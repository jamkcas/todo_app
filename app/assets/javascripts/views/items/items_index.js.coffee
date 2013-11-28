class Todo.Views.ItemsIndex extends Backbone.View

  template: JST['items/index']

  events:
    'submit #new_item': 'createItem'

  initialize: ->
    this.collection.on('reset', this.render, this)
    this.collection.on('add', this.render, this)

  render: ->
    $(this.el).html(this.template())
    this.collection.each(this.prependEntry)
    this

  createItem: (e) ->
    e.preventDefault()

    title = $('#itemTitle').val()
    content = $('#itemContent').val()
    color = $('#itemColor').val()

    this.collection.create {title: title, content: content, color: color}

  prependEntry: (item) ->
    itemView = new Todo.Views.Item(model: item)
    $('#list').prepend(itemView.render().el)