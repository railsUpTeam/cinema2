require 'test_helper'

class UsrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usr = usrs(:one)
  end

  test "should get index" do
    get usrs_url
    assert_response :success
  end

  test "should get new" do
    get new_usr_url
    assert_response :success
  end

  test "should create usr" do
    assert_difference('Usr.count') do
      post usrs_url, params: { usr: { Imie: @usr.Imie, email: @usr.email, nazwisko: @usr.nazwisko, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to usr_url(Usr.last)
  end

  test "should show usr" do
    get usr_url(@usr)
    assert_response :success
  end

  test "should get edit" do
    get edit_usr_url(@usr)
    assert_response :success
  end

  test "should update usr" do
    patch usr_url(@usr), params: { usr: { Imie: @usr.Imie, email: @usr.email, nazwisko: @usr.nazwisko, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to usr_url(@usr)
  end

  test "should destroy usr" do
    assert_difference('Usr.count', -1) do
      delete usr_url(@usr)
    end

    assert_redirected_to usrs_url
  end
end
