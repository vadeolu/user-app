import Ember from 'ember';
import DS from 'ember-data';

export default DS.JSONAPISerializer.extend({
  keyForAttribute(attr) {
    return Ember.String.decamelize(attr);
  },
  keyForRelationship(key) {
    return Ember.String.underscore(key);
  }
});
