# melakukan update data ke mongodb menggunakan method update_one()

require_relative 'connect'

if $PROGRAM_NAME == __FILE__
  collection = MongoModule::collection(:products)

  begin
    # mengubah satu document didalam collection products
    collection.update_one({ kode: 'PR004' }, :$set => { price: '18.999.000' })
  ensure
    MongoModule::CLIENT.close
  end
end
