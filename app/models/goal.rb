class Goal < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :tasks, :dependent => :nullify
  has_many :users, :through => :tasks
  has_many :teams, :through => :tasks

  def to_s
    name
  end
end
