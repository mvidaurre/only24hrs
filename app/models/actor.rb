class Actor < ActiveRecord::Base
  attr_accessible :subject, :task
  belongs_to :subject, :polymorphic => true
  belongs_to :task
end
