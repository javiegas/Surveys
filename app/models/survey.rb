class Survey < ActiveRecord::Base
  belongs_to :country
  has_many :survey_comments
end
