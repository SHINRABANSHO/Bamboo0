require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { catch_copy: @service.catch_copy, company_id: @service.company_id, discription: @service.discription, images: @service.images, name: @service.name, rv_cost: @service.rv_cost, rv_maintenability: @service.rv_maintenability, rv_simplisity: @service.rv_simplisity, rv_support: @service.rv_support, rv_whole: @service.rv_whole, status: @service.status, strong_point: @service.strong_point, tv_experience: @service.tv_experience } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { catch_copy: @service.catch_copy, company_id: @service.company_id, discription: @service.discription, images: @service.images, name: @service.name, rv_cost: @service.rv_cost, rv_maintenability: @service.rv_maintenability, rv_simplisity: @service.rv_simplisity, rv_support: @service.rv_support, rv_whole: @service.rv_whole, status: @service.status, strong_point: @service.strong_point, tv_experience: @service.tv_experience } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
