require 'test_helper'

class ChurchServicesControllerTest < ActionController::TestCase
  setup do
    @church_service = church_services(:service_one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:church_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create church_service" do
    assert_difference('ChurchService.count') do
      post :create, church_service: { name: @church_service.name, schedule: @church_service.schedule, weekday: @church_service.weekday }
    end

    assert_redirected_to church_service_path(assigns(:church_service))
  end

  test "should show church_service" do
    get :show, id: @church_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @church_service
    assert_response :success
  end

  test "should update church_service" do
    patch :update, id: @church_service, church_service: { name: @church_service.name, schedule: @church_service.schedule, weekday: @church_service.weekday }
    assert_redirected_to church_service_path(assigns(:church_service))
  end

  test "should destroy church_service" do
    assert_difference('ChurchService.count', -1) do
      delete :destroy, id: @church_service
    end

    assert_redirected_to church_services_path
  end
end
