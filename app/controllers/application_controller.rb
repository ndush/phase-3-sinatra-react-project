class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/products' do
    products = Product.all
    products.to_json
  end

  # get '/products/:id' do
  #   product = Product.find(params[:id])
  #   product.to_json
  # end

  # post '/products' do
  #   product = Product.create(
  #     product_name: params[:product_name],
  #     unit_price: params[:unit_price],
  #     description: params[:description],
  #     image_url: params[:image_url],
  #   )
  #   product.to_json
  # end

  # patch '/products/:id' do
  #   product = Product.find(params[:id])
  #   product.update(
  #     unit_price: params[:unit_price])
  #     product.to_json
  # end

  # delete '/products/:id' do
  #   product = Product.find(params[:id])
  #   product.destroy
  #   product.to_json
  # end

  # get "/orders" do
  #      order =Order.all
  #      order.to_json
  #     end
    
  #     get "/orders/:id" do
  #       order= Order.find(params[:id])
  #       order.to_json 
  #     end
    
  #     post "/orders" do
  #     order= Order.create(
  #       quantity: params[:quantity],
  #       supplier_id: params[:supplier_id],
  #       product_id: params[:product_id]
  #     )
  #     order.to_json
  #     end
     
    
  #     patch '/orders/:id' do
  #       order = Order.find(params[:id])
  #       order.update(quantity: params[:quantity])
  #       order.to_json
  #     end
    
  #     delete "/orders/:id" do
  #       order = Order.find(params[:id])
  #       order.destroy
  #       order.to_json
  #     end
    
end