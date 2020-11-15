def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item_on_shelf|
    if item_on_shelf[:item] == name
      return item_on_shelf
    end
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
#create cart with unique items
  unique_cart = cart.uniq
#iterate over each item in the cart, counting each unique item
  unique_cart.map do |unique_item|
    unique_item[:count] = cart.count {|cart_item| cart_item == unique_item}
    unique_item
  end
end
