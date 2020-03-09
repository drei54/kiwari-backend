require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get products_test_url
    assert_response :success
  end

end
