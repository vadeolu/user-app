import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('user');
  },

  actions: {
    delete(user) {
      user.destroyRecord();
    },
    edit(user) {
      this.transitionTo('users.edit', user)
    }
  }
});
