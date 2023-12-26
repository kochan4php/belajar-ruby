# melakukan insert data ke mongodb menggunakan method insert_one()

require_relative 'connect'

if $PROGRAM_NAME == __FILE__
  begin
    collection = MongoModule::collection(:products)

    # menambahkan satu dokumen ke dalam collection
    collection.insert_one({ kode: 'PR001', name: 'Xiaomi Redmi Note 5', price: '2.999.000' })
  rescue StandardError
  ensure
    # menutup koneksi
    MongoModule::CLIENT.close
  end

end
