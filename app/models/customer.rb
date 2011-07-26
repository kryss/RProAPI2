class Customer < ActiveRecord::Base
  belongs_to :local
  validates_presence_of :name, :mobile_phone
end
