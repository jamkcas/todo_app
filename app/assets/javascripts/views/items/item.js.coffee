class Todo.Views.Item extends Backbone.View

  template: JST['items/item']

  tagName: 'li'

  render: ->
    $(this.el).html(this.template(item: this.model))
    this