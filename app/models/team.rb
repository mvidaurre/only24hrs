class Team < ActiveRecord::Base
  attr_accessible :goal, :name, :user
  has_many :actors, :as => :subject
end
