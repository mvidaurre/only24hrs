class Task < ActiveRecord::Base
  attr_accessible :completion, :daadline, :focus_id, :goal_id, :name, :priority, :status
  has_many :actors, :dependent => :destroy
  has_many :users, :through => :actors, :source => :subject, :source_type => 'User'
  has_many :teams, :through => :actors, :source => :subject, :source_type => 'Team'
  belongs_to :focus
  belongs_to :goal
  has_many :progresses, :dependent => :destroy

  scope :for_today, lambda { where("daadline like ?", self.time ) }
  scope :past_due, lambda { where("daadline < ?", self.time ) }
  scope :to_go, lambda { where("daadline > ?", self.time ) }

  def owners
    users.map{|u| u.name}
  end
  
  def to_s
    name
  end

  private

  def self.time
    Time.now.strftime("%Y-%m-%d")
  end

end
