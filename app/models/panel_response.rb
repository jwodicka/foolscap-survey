class PanelResponse < ActiveRecord::Base
  include InterestLevel

  belongs_to :survey_response
  has_one :panel
  attr_accessible :would_attend, :would_moderate, :panelist_interest
end
