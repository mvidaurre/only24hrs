class Task < ActiveRecord::Base
  attr_accessible :completion, :daadline, :focus, :goal, :name, :priority, :status
  has_many :actors
  has_many :users, :through => :actors
  has_many :teams, :through => :actors
  belongs_to :focus
  belongs_to :goal
  has_many :progresses
end
