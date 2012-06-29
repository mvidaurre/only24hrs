class Team < ActiveRecord::Base
  attr_accessible :goal, :name, :user, :goal_id, :user_id
  has_many :actors, :as => :subject, :dependent => :destroy
  has_many :tasks, :through => :actors, :uniq => true
  has_many :users, :through => :tasks
  has_many :goals, :through => :tasks
  has_many :focuses, :through => :tasks
  has_many :progresses, :as => :subject, :dependent => :nullify
  belongs_to :leader, :class_name => 'User', :foreign_key => "user_id"
  belongs_to :main_goal, :class_name => 'Goal', :foreign_key => "goal_id"

  def to_s
    name
  end

  def teammates
    users
  end
end
