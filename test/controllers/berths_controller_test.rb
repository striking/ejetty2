require 'test_helper'

class BerthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @berth = berths(:one)
  end

  test "should get index" do
    get berths_url
    assert_response :success
  end

  test "should get new" do
    get new_berth_url
    assert_response :success
  end

  test "should create berth" do
    assert_difference('Berth.count') do
      post berths_url, params: { berth: { bridge: @berth.bridge, description: @berth.description, max_length: @berth.max_length, max_width: @berth.max_width, power: @berth.power, water: @berth.water } }
    end

    assert_redirected_to berth_url(Berth.last)
  end

  test "should show berth" do
    get berth_url(@berth)
    assert_response :success
  end

  test "should get edit" do
    get edit_berth_url(@berth)
    assert_response :success
  end

  test "should update berth" do
    patch berth_url(@berth), params: { berth: { bridge: @berth.bridge, description: @berth.description, max_length: @berth.max_length, max_width: @berth.max_width, power: @berth.power, water: @berth.water } }
    assert_redirected_to berth_url(@berth)
  end

  test "should destroy berth" do
    assert_difference('Berth.count', -1) do
      delete berth_url(@berth)
    end

    assert_redirected_to berths_url
  end
end
