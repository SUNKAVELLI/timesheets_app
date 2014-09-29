class Project < ActiveRecord::Base
  attr_accessible :desc, :name
  has_many :timesheets
  has_many :employees, through: :timesheets  
  validates :name, presence: true, uniqueness: true
end
