class Dish < ActiveRecord::Base
  belongs_to :local
  validates_presence_of :name, :price
  acts_as_taggable_on :styles
  
end
