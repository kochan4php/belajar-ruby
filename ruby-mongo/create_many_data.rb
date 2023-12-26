# melakukan insert data ke mongodb menggunakan method insert_many()

require_relative 'connect'

if $PROGRAM_NAME == __FILE__
  begin
    collection = MongoModule::collection(:products)

    # menambahkan banyak document ke dalam collection
    documents = [
      { kode: 'PR002', name: 'HP Pavilion Plus 14', price: '2.999.000' },
      { kode: 'PR003', name: 'Macbook air m1', price: '12.999.000' },
      { kode: 'PR004', name: 'Macbook pro m2', price: '20.999.000' },
      { kode: 'PR005', name: 'HP Envy X360', price: '16.999.000' },
      { kode: 'PR006', name: 'HP Spectre', price: '22.999.000' }
    ]

    collection.insert_many(documents)
  ensure
    MongoModule::CLIENT.close
  end
end
