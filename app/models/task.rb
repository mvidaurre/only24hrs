class Task < ActiveRecord::Base
  attr_accessible :completion, :daadline, :focus_id, :goal_id, :name, :priority, :status
  has_many :actors, :dependent => :destroy
  has_many :users, :through => :actors, :source => :subject, :source_type => 'User'
  has_many :teams, :through => :actors, :source => :subject, :source_type => 'Team'
  belongs_to :focus
  belongs_to :goal
  has_many :progresses, :dependent => :destroy

  scope :for_today, lambda { where("daadline like ?", Date.now ) }
  scope :past_due, lambda { where("daadline < ?", Time.zone.now ) }

  def owners
    users.map{|u| u.name}
  end
  
  def to_s
    name
  end

end
