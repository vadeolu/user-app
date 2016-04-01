import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    deleteUser(user) {
      this.sendAction('removeUser', user)
    }
  }
});
