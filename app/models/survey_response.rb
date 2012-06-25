class SurveyResponse < ActiveRecord::Base
  attr_accessible :comment, :email, :email_preference, :token, :name
  has_many :panel_responses
  has_one :availability
end
