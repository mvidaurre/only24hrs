class User < ActiveRecord::Base
  has_many :actors, :as => :subject
  has_many :tasks, :through => :actors
  has_many :teams, :through => :tasks
  has_many :goals, :through => :tasks
  has_many :focuses, :through => :tasks
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  # attr_accessible :title, :body
  validates :first_name, :last_name, :email, :presence => true
  validates :first_name, :last_name, :length => { :in => 1..24 }
  
  def name
    "#{first_name} #{last_name}"
  end

end
