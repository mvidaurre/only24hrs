class Focus < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :tasks
  has_many :users, :through => :tasks

  def to_s
    name
  end
end
