Only24hrs.Progress = DS.Model.extend({
  task: DS.attr('reference'),
  starts: DS.attr('time'),
  ends: DS.attr('time'),
  effort: DS.attr('integer'),
  subject: DS.attr('reference')
});