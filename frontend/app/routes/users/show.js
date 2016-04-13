import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    delete(user) {
      if (confirm("Do you really want to delete this user?")) {
        user.destroyRecord().then(() => {
          this.transitionTo('users');
        });
      }
    },
    edit(user) {
      this.transitionTo('users.edit', user);
    }
  }
});
