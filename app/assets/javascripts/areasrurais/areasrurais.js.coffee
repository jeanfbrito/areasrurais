#= require_self
#= require_tree .

window.Areasrurais =
  Common:
    initPage: ->
      # If you're using the Turbolinks and you need run a code only one time, put something here.
      # if you're not using the turbolinks, there's no difference between init and initPage.

    init: ->
      # Something here. This is called in every page, with or without Turbolinks.
      $('.fotorama:not([data-auto="false"])').fotorama()

    finish: ->
      # Something here. This is called in every page, with or without Turbolinks.

