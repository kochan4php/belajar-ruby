# membaca data collections products

require_relative 'connect'

if $PROGRAM_NAME == __FILE__
  # ! Untuk mengambil semua data dari collection products, kita dapat menggunakan method find() dari class Collection.
  # ! Hasil query datanya akan disimpan didalam objek bertipe Mongo::Collection::View.
  # ! Untuk menampilkan seluruh data dari documents, kita dapat melakukan iterasi terhadap documents tersebut.

  begin
    collection = MongoModule::collection(:products)

    # mengambil semua data document dari collection products
    documents = collection.find

    # menampilkan semua data document ke console dengan melakukan iterasi terhadap elemen-elemen dari document
    count = 1
    documents.each do |document|
      puts "Produk ke-#{count}"
      puts "Nama Produk: #{document['name']}"
      puts "Kode Produk: #{document['kode']}"
      puts "Harga Produk: #{document['price']}"

      puts
      count += 1
    end
  ensure
    MongoModule::CLIENT.close
  end
end
