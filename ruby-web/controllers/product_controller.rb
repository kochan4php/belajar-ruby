require_relative '../models/product'

class ProductController
  def initialize
    @product_model = Product.new
  end

  def index
    @products = @product_model.index
  end

  def store(name, price)
    @product_model.name = name
    @product_model.price = price

    @product_model.create
  end

  def show(id)
    @product_model.id = id

    @product = @product_model.show
  end

  def edit(id)
    @product_model.id = id

    @product = @product_model.show
  end

  def update(id, name, price)
    @product_model.id = id
    @product_model.name = name
    @product_model.price = price

    @product_model.update
  end

  def delete(id)
    @product_model.id = id

    @product_model.delete
  end
end
