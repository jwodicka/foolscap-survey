class PanelResponsesController < ApplicationController
  # GET /panel_responses
  # GET /panel_responses.json
  def index
    @panel_responses = PanelResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @panel_responses }
    end
  end

  # GET /panel_responses/1
  # GET /panel_responses/1.json
  def show
    @panel_response = PanelResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @panel_response }
    end
  end

  # GET /panel_responses/new
  # GET /panel_responses/new.json
  def new
    @panel_response = PanelResponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @panel_response }
    end
  end

  # GET /panel_responses/1/edit
  def edit
    @panel_response = PanelResponse.find(params[:id])
  end

  # POST /panel_responses
  # POST /panel_responses.json
  def create
    @panel_response = PanelResponse.new(params[:panel_response])

    respond_to do |format|
      if @panel_response.save
        format.html { redirect_to @panel_response, notice: 'Panel response was successfully created.' }
        format.json { render json: @panel_response, status: :created, location: @panel_response }
      else
        format.html { render action: "new" }
        format.json { render json: @panel_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /panel_responses/1
  # PUT /panel_responses/1.json
  def update
    @panel_response = PanelResponse.find(params[:id])

    respond_to do |format|
      if @panel_response.update_attributes(params[:panel_response])
        format.html { redirect_to @panel_response, notice: 'Panel response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @panel_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel_responses/1
  # DELETE /panel_responses/1.json
  def destroy
    @panel_response = PanelResponse.find(params[:id])
    @panel_response.destroy

    respond_to do |format|
      format.html { redirect_to panel_responses_url }
      format.json { head :no_content }
    end
  end
end
