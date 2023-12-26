# membuat koneksi antara ruby dan mongodb

require 'mongo'

module MongoModule
  CLIENT = Mongo::Client.new(['127.0.0.1:27017'], database: 'db_ruby')

  def self.collection(collection_name)
    MongoModule::CLIENT[collection_name]
  end
end
