class Todo.Views.ItemsIndex extends Backbone.View

  template: JST['items/index']

  events:
    # When a new item is submitted it calls the function 'createItem'
    'submit #new_item': 'createItem'

  initialize: ->
    this.collection.on('reset', this.render, this)
    this.collection.on('add', this.render, this)

  render: ->
    # Renders the template 'index.jst.eco'
    $(this.el).html(this.template())
    # Loops through the collection fetched for this view and calls the 'prependEntry' function
    this.collection.each(this.prependEntry)
    # Returns the html rendered from this
    this

  createItem: (e) ->
    # Prevents the form from being submitted
    e.preventDefault()

    # Grabs the form values
    title = $('#itemTitle').val()
    content = $('#itemContent').val()
    color = $('#itemColor').val()

    attrs = {title: title, content: content, color: color}

    this.collection.create attrs,
      wait: true
      success: ->
        $('#itemTitle').val('')
        $('#itemContent').val('')
        $('#itemColor').val('')
      error: this.handleError

  prependEntry: (item) ->
    itemView = new Todo.Views.Item(model: item)
    $('#list').prepend(itemView.render().el)

  handleError: (item, response) ->
    if response.status == 422
      errors  = $.parseJSON(response.responseText).errors
      $('#errors').empty()
      for name, messages of errors
        for message in messages
          error_template = JST['items/error']
          $('#errors').prepend(error_template(message: message, name: name))