require 'test_helper'

class BountiesControllerTest < ActionController::TestCase
  setup do
    @bounty = bounties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bounties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bounty" do
    assert_difference('Bounty.count') do
      post :create, bounty: { description: @bounty.description, due_date: @bounty.due_date, duration: @bounty.duration, hunter_id: @bounty.hunter_id, latitude: @bounty.latitude, longitude: @bounty.longitude, owner_id: @bounty.owner_id, reward: @bounty.reward, status: @bounty.status, title: @bounty.title, verfication_type: @bounty.verfication_type, verification: @bounty.verification }
    end

    assert_redirected_to bounty_path(assigns(:bounty))
  end

  test "should show bounty" do
    get :show, id: @bounty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bounty
    assert_response :success
  end

  test "should update bounty" do
    put :update, id: @bounty, bounty: { description: @bounty.description, due_date: @bounty.due_date, duration: @bounty.duration, hunter_id: @bounty.hunter_id, latitude: @bounty.latitude, longitude: @bounty.longitude, owner_id: @bounty.owner_id, reward: @bounty.reward, status: @bounty.status, title: @bounty.title, verfication_type: @bounty.verfication_type, verification: @bounty.verification }
    assert_redirected_to bounty_path(assigns(:bounty))
  end

  test "should destroy bounty" do
    assert_difference('Bounty.count', -1) do
      delete :destroy, id: @bounty
    end

    assert_redirected_to bounties_path
  end
end
