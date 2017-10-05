require 'test_helper'

class PenguinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @penguin = penguins(:one)
  end

  test "should get index" do
    get penguins_url
    assert_response :success
  end

  test "should get new" do
    get new_penguin_url
    assert_response :success
  end

  test "should create penguin" do
    assert_difference('Penguin.count') do
      post penguins_url, params: { penguin: { color: @penguin.color, height: @penguin.height, name: @penguin.name, weight: @penguin.weight } }
    end

    assert_redirected_to penguin_url(Penguin.last)
  end

  test "should show penguin" do
    get penguin_url(@penguin)
    assert_response :success
  end

  test "should get edit" do
    get edit_penguin_url(@penguin)
    assert_response :success
  end

  test "should update penguin" do
    patch penguin_url(@penguin), params: { penguin: { color: @penguin.color, height: @penguin.height, name: @penguin.name, weight: @penguin.weight } }
    assert_redirected_to penguin_url(@penguin)
  end

  test "should destroy penguin" do
    assert_difference('Penguin.count', -1) do
      delete penguin_url(@penguin)
    end

    assert_redirected_to penguins_url
  end
end
