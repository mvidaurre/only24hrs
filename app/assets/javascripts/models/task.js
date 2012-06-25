Only24hrs.Task = DS.Model.extend({
  name: DS.attr('string'),
  daadline: DS.attr('date'),
  priority: DS.attr('integer'),
  completion: DS.attr('date'),
  status: DS.attr('integer'),
  focus: DS.attr('reference'),
  goal: DS.attr('reference')
});