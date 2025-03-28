def calculate_price(item)
  base_price = item[:price]
  discount = item[:discount] || 0
  tax = item[:tax] || 0

  total_price = base_price - discount + tax
  total_price
end

def print_invoice(item)
  puts "Item: #{item[:name]}"
  puts "Base Price: $#{item[:price]}"
  puts "Discount: $#{item[:discount] || 0}"
  puts "Tax: $#{item[:tax] || 0}"
  puts "Total: $#{calculate_price(item)}"
end

def print_invoice_with_total(item)
  puts "Item: #{item[:name]}"
  puts "Base Price: $#{item[:price]}"
  puts "Discount: $#{item[:discount] || 0}"
  puts "Tax: $#{item[:tax] || 0}"
  puts "Total Price: $#{item[:price] - (item[:discount] || 0) + (item[:tax] || 0)}" # Duplicated logic
end

def calculate_total_for_items(items)
  total = 0
  items.each do |item|
    total += calculate_price(item)
  end
  total
end

def print_all_invoices(items)
  items.each do |item|
    print_invoice(item)
    puts "-------------------"
  end
end

def print_invoice_summary(items)
  puts "Total: $#{calculate_total_for_items(items)}"
end

items = [
  { name: "Item 1", price: 100, discount: 10, tax: 8 },
  { name: "Item 2", price: 200, discount: 20, tax: 16 },
  { name: "Item 3", price: 300, discount: 30, tax: 24 }
]

print_all_invoices(items)
print_invoice_summary(items)
