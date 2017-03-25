require 'test_helper'

class VendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_url
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post vendors_url, params: { vendor: { address1: @vendor.address1, address2: @vendor.address2, city: @vendor.city, country: @vendor.country, email: @vendor.email, firstname: @vendor.firstname, lastname: @vendor.lastname, name: @vendor.name, phone: @vendor.phone, province: @vendor.province, zip: @vendor.zip } }
    end

    assert_redirected_to vendor_url(Vendor.last)
  end

  test "should show vendor" do
    get vendor_url(@vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_url(@vendor)
    assert_response :success
  end

  test "should update vendor" do
    patch vendor_url(@vendor), params: { vendor: { address1: @vendor.address1, address2: @vendor.address2, city: @vendor.city, country: @vendor.country, email: @vendor.email, firstname: @vendor.firstname, lastname: @vendor.lastname, name: @vendor.name, phone: @vendor.phone, province: @vendor.province, zip: @vendor.zip } }
    assert_redirected_to vendor_url(@vendor)
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete vendor_url(@vendor)
    end

    assert_redirected_to vendors_url
  end
end
