require_relative '../controllers/product_controller'

product_controller = ProductController.new

get '/products' do
  # variable yang ingin dikirim ke view erb harus diawali dengan tanda @ diikuti nama variablenya.
  @products = product_controller.index
  erb :"products/index"
rescue StandardError => e
  puts "ANY ERROR: #{e.message}"
end

get '/products/new' do
  erb :"products/create"
rescue StandardError => e
  puts "ANY ERROR: #{e.message}"
end

get '/products/:id' do
  @product = product_controller.show(params[:id])
  erb :"products/show"
rescue StandardError => e
  puts "ANY ERROR: #{e.message}"
end

post '/products' do
  product_controller.store(params[:name], params[:price])
  redirect '/products'
rescue StandardError => e
  puts "ANY ERROR: #{e.message}"
end

get '/products/:id/edit' do
  @product = product_controller.edit(params[:id])
  erb :"products/edit"
rescue StandardError => e
  puts "ANY ERROR: #{e.message}"
end

put '/products/:id' do
  product_controller.update(params[:id], params[:name], params[:price])
  redirect '/products'
rescue StandardError => e
  puts "ANY ERROR: #{e.message}"
end

delete '/products/:id' do
  product_controller.delete(params[:id])
  redirect '/products'
rescue StandardError => e
  puts "ANY ERROR: #{e.message}"
end
