require 'test_helper'

class VendorPriceQuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor_price_quote = vendor_price_quotes(:one)
  end

  test "should get index" do
    get vendor_price_quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_price_quote_url
    assert_response :success
  end

  test "should create vendor_price_quote" do
    assert_difference('VendorPriceQuote.count') do
      post vendor_price_quotes_url, params: { vendor_price_quote: { country_of_origin_code: @vendor_price_quote.country_of_origin_code, price: @vendor_price_quote.price, product_id: @vendor_price_quote.product_id, stock_unit_of_measure: @vendor_price_quote.stock_unit_of_measure, unit_of_measure: @vendor_price_quote.unit_of_measure, valid_from: @vendor_price_quote.valid_from, vendor: @vendor_price_quote.vendor } }
    end

    assert_redirected_to vendor_price_quote_url(VendorPriceQuote.last)
  end

  test "should show vendor_price_quote" do
    get vendor_price_quote_url(@vendor_price_quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_price_quote_url(@vendor_price_quote)
    assert_response :success
  end

  test "should update vendor_price_quote" do
    patch vendor_price_quote_url(@vendor_price_quote), params: { vendor_price_quote: { country_of_origin_code: @vendor_price_quote.country_of_origin_code, price: @vendor_price_quote.price, product_id: @vendor_price_quote.product_id, stock_unit_of_measure: @vendor_price_quote.stock_unit_of_measure, unit_of_measure: @vendor_price_quote.unit_of_measure, valid_from: @vendor_price_quote.valid_from, vendor: @vendor_price_quote.vendor } }
    assert_redirected_to vendor_price_quote_url(@vendor_price_quote)
  end

  test "should destroy vendor_price_quote" do
    assert_difference('VendorPriceQuote.count', -1) do
      delete vendor_price_quote_url(@vendor_price_quote)
    end

    assert_redirected_to vendor_price_quotes_url
  end
end
