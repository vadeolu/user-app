import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.createRecord('user');
  },

  actions: {
    create(user) {
      user.save().then(function() {
        user.set('status', 'User has been saved!');
      });
    }
  }
});
