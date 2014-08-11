Danceapp.DancersRoute = Ember.Route.extend
  model: ->
    @store.find('dancer')
