require 'test_helper'

class CashflowsControllerTest < ActionController::TestCase
  setup do
    @cashflow = cashflows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cashflows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cashflow" do
    assert_difference('Cashflow.count') do
      post :create, cashflow: { amount: @cashflow.amount, credit: @cashflow.credit, date: @cashflow.date, debit: @cashflow.debit, description: @cashflow.description, transaction: @cashflow.transaction }
    end

    assert_redirected_to cashflow_path(assigns(:cashflow))
  end

  test "should show cashflow" do
    get :show, id: @cashflow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cashflow
    assert_response :success
  end

  test "should update cashflow" do
    patch :update, id: @cashflow, cashflow: { amount: @cashflow.amount, credit: @cashflow.credit, date: @cashflow.date, debit: @cashflow.debit, description: @cashflow.description, transaction: @cashflow.transaction }
    assert_redirected_to cashflow_path(assigns(:cashflow))
  end

  test "should destroy cashflow" do
    assert_difference('Cashflow.count', -1) do
      delete :destroy, id: @cashflow
    end

    assert_redirected_to cashflows_path
  end
end
