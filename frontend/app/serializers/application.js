export default DS.JSONAPISerializer.extend({
  keyForAttribute(attr) {
    return Ember.String.decamelize(attr);
  }
});
