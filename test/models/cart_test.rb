require "test_helper"

class CartTest < ActiveSupport::TestCase
  test "carts adds one item" do
    cart = Cart.new
    cart.add_item(1)
    assert !cart.empty?
  end


  test "cart adds multiple items" do
    cart = Cart.new
    3.times { cart.add_item(1)}
    assert_equal 1, cart.items.length
    assert_equal 3, cart.items.first.quantity
  end
test "retrieving products" do
 product =Product.create!(name: "apple", price:1)
 cart = Cart.new
 cart.add_item(product.id)
 assert_kind_of Product, cart.items.first.product
end

end
