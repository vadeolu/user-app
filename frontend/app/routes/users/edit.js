import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    edit(user) {
      user.save();
      this.transitionTo('users.index');
    }
  }
});
