class SessionsController < ApplicationController
  def new
    # Just present the view
  end

  def create
    email = params[:email]

    # HACK 
    redirect_to("/survey_responses/new?email=#{email}")
    return

    email = params[:email]
    existing = SurveyResponse.where(:email => email)

    if existing
      @existing = existing
      redirect_to("/sessions/#{email}") if existing
      return
    end

    redirect_to("/survey_responses/new?#{email}")
  end

  def show
    @email = params[:id]
    @existing = SurveyResponse.where(:email => @email)

  end

  def index
  end
end
