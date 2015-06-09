require 'test_helper'

class RecipientCardsControllerTest < ActionController::TestCase
  setup do
    @recipient_card = recipient_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipient_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipient_card" do
    assert_difference('RecipientCard.count') do
      post :create, recipient_card: { amount: @recipient_card.amount, donatur: @recipient_card.donatur, month: @recipient_card.month, receiver: @recipient_card.receiver, recipient_id: @recipient_card.recipient_id, urut: @recipient_card.urut }
    end

    assert_redirected_to recipient_card_path(assigns(:recipient_card))
  end

  test "should show recipient_card" do
    get :show, id: @recipient_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipient_card
    assert_response :success
  end

  test "should update recipient_card" do
    patch :update, id: @recipient_card, recipient_card: { amount: @recipient_card.amount, donatur: @recipient_card.donatur, month: @recipient_card.month, receiver: @recipient_card.receiver, recipient_id: @recipient_card.recipient_id, urut: @recipient_card.urut }
    assert_redirected_to recipient_card_path(assigns(:recipient_card))
  end

  test "should destroy recipient_card" do
    assert_difference('RecipientCard.count', -1) do
      delete :destroy, id: @recipient_card
    end

    assert_redirected_to recipient_cards_path
  end
end
