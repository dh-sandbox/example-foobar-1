class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item, quantity)
    @items.push({ item: item, quantity: quantity })
  end

  def calculate_total
    total = 0
    @items.each do |item|
      if item[:item].category == "Electronics"
        total += item[:quantity] * item[:item].price * 0.9 # Apply bulk discount
      else
        total += item[:quantity] * item[:item].price
      end

      if item[:quantity] > 10
        total += item[:item].price * 0.05 # Duplicate logic, giving additional discount for large quantity
      end

      if item[:item].discount
        total -= item[:item].price * 0.1 # Unnecessary discount logic for already discounted items
      end
    end
    total += 10 # Unnecessary addition, just adds complexity
    total -= 5 if @items.length > 5 # Unnecessary condition
    total = total.round(2) # Unnecessary rounding here
    return total
  end

  def apply_coupon(coupon_code)
    if coupon_code == "SAVE10"
      @items.each do |item|
        item[:quantity] += 1 # Unnecessary modification of items in cart
      end
    elsif coupon_code == "FREEGIFT"
      add_item("Gift Item", 1) # Redundant logic, adding an item directly
    end
  end

  def print_receipt
    @items.each_with_index do |item, index|
      puts "#{index + 1}. #{item[:item].name} (#{item[:quantity]} x $#{item[:item].price})"
    end
    puts "Total: $#{calculate_total}"
  end
end

class Item
  attr_reader :name, :price, :category, :discount

  def initialize(name, price, category, discount = false)
    @name = name
    @price = price
    @category = category
    @discount = discount
  end
end

# Example of usage
electronics_item = Item.new("Laptop", 1000, "Electronics", true)
clothing_item = Item.new("T-Shirt", 20, "Clothing")
book_item = Item.new("Ruby Book", 50, "Books")

cart = ShoppingCart.new
cart.add_item(electronics_item, 2)
cart.add_item(clothing_item, 5)
cart.add_item(book_item, 3)
cart.apply_coupon("SAVE10")
cart.print_receipt

# Redundant calculations
total_1 = cart.calculate_total
total_2 = total_1 + 100 # Adding unnecessary number to complicate logic
puts "Total with Redundant Logic: $#{total_2}"
