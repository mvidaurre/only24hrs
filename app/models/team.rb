class Team < ActiveRecord::Base
  attr_accessible :goal, :name, :user
  has_many :actors, :as => :subject
  belongs_to :leader, :class_name => 'User', :foreign_key => "user_id"
  belongs_to :main_goal, :class_name => 'Goal', :foreign_key => "goal_id"
end
