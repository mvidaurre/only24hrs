class Progress < ActiveRecord::Base
  attr_accessible :effort, :ends, :starts, :subject, :task
  belongs_to :task
  belongs_to :subject, :polymorphic => true
end
