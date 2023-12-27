require_relative '../config/connection'

class Product
  attr_accessor :id, :name, :price

  def initialize
    @client = MySQLModule.client
  end

  def index
    @rows = @client.query('SELECT * FROM products')
  end

  def create
    statement = @client.prepare('INSERT INTO products (name, price) VALUES (?, ?)')
    statement.execute(@name, @price)
  end

  def show
    statement = @client.prepare('SELECT * FROM products WHERE id = ? LIMIT 1')
    @row = statement.execute(@id)
  end

  def update
    statement = @client.prepare('UPDATE products SET name = ?, price = ? WHERE id = ?')
    statement.execute(@name, @price, @id)
  end

  def delete
    statement = @client.prepare('DELETE FROM products WHERE id = ?')
    statement.execute(@id)
  end
end
