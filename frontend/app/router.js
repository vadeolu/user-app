import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('users', {path: ''}, function() {
    this.route('edit', {
      path: ':user_id/edit'
    });

    this.route('index', {path: ''}, function() {
      this.route('new', {path: ''});
    });
  });
});

export default Router;
