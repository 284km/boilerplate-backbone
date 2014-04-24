require.config
  paths:
    jquery: 'vendor/jquery/dist/jquery',
    underscore: 'vendor/underscore/underscore',
    backbone: 'vendor/backbone/backbone',
  shim:
    underscore:
      exports: '_'
    backbone:
      exports: 'Backbone',
      deps: ['jquery', 'underscore'],

require ['jquery', 'underscore', 'backbone', 'routers/app_router'], ($, _, Backbone, Router) ->
  router = new Router()
  Backbone.history.start(pushState: true)

