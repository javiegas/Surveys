class Country < ActiveRecord::Base
  has_many :surveys
  
  validates_presence_of :id, :name, :who_region_rf
  
  validates_uniqueness_of :id
  
  set_primary_key :id
end
