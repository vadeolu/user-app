import DS from 'ember-data';

let {
  Model,
  attr,
  hasMany
} = DS;

export default Model.extend({
  firstName: attr('string'),
  lastName: attr('string'),
  blogPosts: hasMany('blogPost', {async: true} )
});
