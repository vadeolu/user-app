import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('user');
  },

  actions: {
    delete(user) {
      if (confirm("Do you really want to delete this user?")) {
        user.destroyRecord().then();
      }
    },
    edit(user) {
      this.transitionTo('users.edit', user);
    }
  }
});
