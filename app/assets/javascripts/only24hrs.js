//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require_tree ./routes
//= require_self

Only24hrs = Ember.Application.create();
var router = Only24hrs.router = Only24hrs.Router.create({
  location: 'hash'
});
Only24hrs.initialize(router);

