# melakukan update data yang ada di mongodb menggunakan method delete_one()

require_relative 'connect'

if $PROGRAM_NAME == __FILE__
  collection = MongoModule.collection(:products)

  begin
    # menghapus satu document didalam collection products
    collection.delete_one({ kode: 'PR003' })
  ensure
    MongoModule::CLIENT.close
  end
end
