class Todo.Views.ItemsIndex extends Backbone.View

  template: JST['items/index']

  initialize: ->
    this.collection.on('reset', this.render, this)

  render: ->
    $(this.el).html(this.template(items: this.collection))
    this