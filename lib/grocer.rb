
require 'pry'

# def find_item_by_name_in_collection(name, collection)
#   collection.each do |item_info|
#     if item_info[:item] == name
#       return item_info
#     end 
#   end 
#   nil
# end 

def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length 
  if collection[counter][:item] == name
  return collection[counter]
end
counter += 1 
end
#nil
end 
 

def consolidate_cart(cart)
  new_cart = []
  counter = 0 
  while counter < cart.length 
  new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
  if new_cart_item != nil 
    new_cart_item[:count] += 1 
  else
    new_cart_item = {
      :item => cart[counter][:item],
      :price => cart[counter][:price], 
      :clearance => cart[counter][:clearance],
      :count => 1 
    }
    new_cart << new_cart_item 
  end
  counter += 1 
end 
new_cart 
end 
  
#   cart_arr = []
#     #cart.each do |cart_item|  #cart_itme = hash 
#     #cart_item.each do |name, data|
#     # binding.pry 
#       if cart_item[:item] == cart
#         #cart_item.each do ||
#         cart_arr[:count] += 1
        
#       else
#         #cart_arr[name] = data
#         cart_arr[:item][:count] = 1
#       end
#   cart_arr
# end

