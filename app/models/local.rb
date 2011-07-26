class Local < ActiveRecord::Base
  belongs_to :user
  has_many :dishes
  has_many :customers
  validates_presence_of :name
  
end
