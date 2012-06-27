class SurveyResponse < ActiveRecord::Base
  attr_accessible :comment, :email, :email_preference, :token, :name
  has_many :panel_responses
  has_one :availability
  accepts_nested_attributes_for :panel_responses, :availability

  def build_panel_responses
    logger.info("Build panel responses:")
    self.panel_responses = Panel.all.each_with_object([]) do |panel, responses|
      logger.warn("panel response: panel #{panel.inspect}")
      # responses << (PanelResponse.where(:survey_response_id => id, :panel_id => panel.id) || PanelResponse.new)
      responses << PanelResponse.new
    end
  end

end
