require_relative 'grocer'
require 'pry'

def items
	[
		{"AVOCADO" => {:price => 3.00, :clearance => true}},
		{"KALE" => {:price => 3.00, :clearance => false}},
		{"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
		{"ALMONDS" => {:price => 9.00, :clearance => false}},
		{"TEMPEH" => {:price => 3.00, :clearance => true}},
		{"CHEESE" => {:price => 6.50, :clearance => false}},
		{"BEER" => {:price => 13.00, :clearance => false}},
		{"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
		{"BEETS" => {:price => 2.50, :clearance => false}}
	]
end

def coupons
	[
		{:item => "AVOCADO", :num => 2, :cost => 5.00},
		{:item => "BEER", :num => 2, :cost => 20.00},
		{:item => "CHEESE", :num => 3, :cost => 15.00}
	]
end

def generate_cart
	[].tap do |cart|
		rand(20).times do
			cart.push(items.sample)
		end
	end
end

def generate_coupons
	[].tap do |c|
		rand(2).times do
			c.push(coupons.sample)
		end
	end
end

cart = generate_cart
coupons = generate_coupons

puts "Items in cart"
cart.each do |item|
	puts "Item: #{item.keys.first}"
	puts "Price: #{item[item.keys.first][:price]}"
	puts "Clearance: #{item[item.keys.first][:clearance]}"
	puts "=" * 10
end

puts "Coupons on hand"
coupons.each do |coupon|
	puts "Get #{coupon[:item].capitalize} for #{coupon[:cost]} when you by #{coupon[:num]}"
end

puts "Your total is #{checkout(cart: cart, coupons: coupons)}"




def find_item_by_name_in_collection(name, collection)
  binding.pry
  collection.each do |item_info|
    if item_info[:item] == name
      return item_info
    end 
  end 
  nil
end 

 

def consolidate_cart(cart)
  cart_arr = []
  cart.each do |cart_item|
    cart_item.each do |name, data|
      if cart_arr[name]
        cart_arr[name][:count] += 1
      else
        cart_arr[name] = data
        cart_arr[name][:count] = 1
      end
    end
  end
  cart_arr
end


# def consolidate_cart(cart)
#   new_cart = []
#   cart.each do |cart_item|
#     item_name = cart_item[:item]
#     item_info = find_item_by_name_in_collection(item_name, new_cart)
#     if item_info
#       item_info[:count] += 1
#     else
#       new_cart << {
#         :item => item_name,
#         :price => cart_item[:price],
#         :clearance => cart_item[:clearance],
#         :count => 1
#       }
#     end #if
#   end #each
#   new_cart
# end

# output = []
#   cart.each do |item|
#     item_name = item.keys[0]
#     if output[item_name]
#       output[item_name][:count] += 1 
#     else
#       output[item_name] = item[item_name]
#       output[item_name][:count] = 1 
#     end
#   end
#   output





