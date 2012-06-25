require 'test_helper'

class PanelResponsesControllerTest < ActionController::TestCase
  setup do
    @panel_response = panel_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_response" do
    assert_difference('PanelResponse.count') do
      post :create, panel_response: { would_attend: @panel_response.would_attend, would_moderate: @panel_response.would_moderate, panelist_interest: @panel_response.panelist_interest }
    end

    assert_redirected_to panel_response_path(assigns(:panel_response))
  end

  test "should show panel_response" do
    get :show, id: @panel_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_response
    assert_response :success
  end

  test "should update panel_response" do
    put :update, id: @panel_response, panel_response: { would_attend: @panel_response.would_attend, would_moderate: @panel_response.would_moderate, panelist_interest: @panel_response.panelist_interest }
    assert_redirected_to panel_response_path(assigns(:panel_response))
  end

  test "should destroy panel_response" do
    assert_difference('PanelResponse.count', -1) do
      delete :destroy, id: @panel_response
    end

    assert_redirected_to panel_responses_path
  end
end
