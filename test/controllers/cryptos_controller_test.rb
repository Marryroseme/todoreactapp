
require 'test_helper'

class CryptosControllerTest < ActionController::TestCase
  setup do
    @crypto = cryptos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cryptos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crypto" do
    assert_difference('Crypto.count') do
      post :create, crypto: { amount_owned: @crypto.amount_owned, cost_per: @crypto.cost_per, symbol: @crypto.symbol, user_id: @crypto.user_id }
    end

    assert_redirected_to crypto_path(assigns(:crypto))
  end

  test "should show crypto" do
    get :show, id: @crypto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crypto
    assert_response :success
  end

  test "should update crypto" do
    patch :update, id: @crypto, crypto: { amount_owned: @crypto.amount_owned, cost_per: @crypto.cost_per, symbol: @crypto.symbol, user_id: @crypto.user_id }
    assert_redirected_to crypto_path(assigns(:crypto))
  end

  test "should destroy crypto" do
    assert_difference('Crypto.count', -1) do
      delete :destroy, id: @crypto
    end

    assert_redirected_to cryptos_path
  end