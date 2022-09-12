puts "🌱 Seeding spices..."

# Seed your database here
Supplier.create(supplier_name: 'Mary')

# rest_client = RestClient.get("https://evening-stream-14289.herokuapp.com/sales")
# products = JSON.parse(rest_client)
products.each do |product|
   new_product = Product.create(
        product_name: product['product_name'],
        description: product['description'],
        unit_price: product['unit_price'],
    )
    #  array.push
    #  array.push('new element')
  
end

rest_client = RestClient.get('https://evening-stream-14289.herokuapp.com/sales')
orders = JSON.parse(rest_client)
orders.each do |order|
   new_order = Order.create(
    quantity: order['quantity'],
    supplier_id: 1
    # product_id: 1
    )
    
end



# Product.create(product_name: 'dress', description: "make a girl happy", unit_price: 2000)
# Product.create(product_name: 'hamberger', description: "dessert", unit_price: 1500)
# Product.create(product_name: 'Hair oil', description: 'super lady', unit_price: 300)
# Product.create(product_name: 'fruits', description: 'Health you', unit_price: 200)
# Product.create(product_name: 'bracelets', description: "beautiful", unit_price: 2000)

# #create sample order instances
# Order.create(quantity: "5", supplier_id: 1, product_id: 2)
# Order.create(quantity: "4", supplier_id: 3, product_id: 1)
# Order.create(quantity: "3", supplier_id: 5, product_id: 3)
# Order.create(quantity: "10", supplier_id: 4, product_id:5)
# Order.create(quantity: "7", supplier_id: 6, product_id: 4)

# #create sample supplier instances
# Supplier.create(supplier_name: "The Marshalls")
# Supplier.create(supplier_name: "Chicken in")
# Supplier.create(supplier_name: "Best lady")
# Supplier.create(supplier_name: "Best kibandaski")
# Supplier.create(supplier_name: "Gracious stores")


puts "✅ Done seeding!"
