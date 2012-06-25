Only24hrs.Team = DS.Model.extend({
  name: DS.attr('string'),
  user: DS.attr('reference'),
  goal: DS.attr('reference')
});