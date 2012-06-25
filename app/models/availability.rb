class Availability < ActiveRecord::Base
  belongs_to :survey_response
  attr_accessible :fri_afternoon, :fri_evening, :sat_afternoon, :sat_am, :sat_evening, :sun_afternoon, :sun_am
end
