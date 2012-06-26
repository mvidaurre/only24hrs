class Task < ActiveRecord::Base
  attr_accessible :completion, :daadline, :focus_id, :goal_id, :name, :priority, :status
  has_many :actors
  has_many :users, :through => :actors, :source => :subject, :source_type => 'User'
  has_many :teams, :through => :actors, :source => :subject, :source_type => 'Team'
  belongs_to :focus
  belongs_to :goal
  has_many :progresses

  def owners
    users.map{|u| u.name}
  end
  
  def to_s
    name
  end

end
