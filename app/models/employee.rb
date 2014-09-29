class Employee < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :timesheets
  has_many :projects, through: :timesheets  
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
