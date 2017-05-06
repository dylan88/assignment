require 'test_helper'

class Admin::MembershipsControllerTest < ActionController::TestCase
  setup do
    @admin_membership = admin_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_membership" do
    assert_difference('Admin::Membership.count') do
      post :create, admin_membership: { description: @admin_membership.description, price: @admin_membership.price, title: @admin_membership.title }
    end

    assert_redirected_to admin_membership_path(assigns(:admin_membership))
  end

  test "should show admin_membership" do
    get :show, id: @admin_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_membership
    assert_response :success
  end

  test "should update admin_membership" do
    patch :update, id: @admin_membership, admin_membership: { description: @admin_membership.description, price: @admin_membership.price, title: @admin_membership.title }
    assert_redirected_to admin_membership_path(assigns(:admin_membership))
  end

  test "should destroy admin_membership" do
    assert_difference('Admin::Membership.count', -1) do
      delete :destroy, id: @admin_membership
    end

    assert_redirected_to admin_memberships_path
  end
end
