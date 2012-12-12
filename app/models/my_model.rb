class MyModel
  include MongoMapper::Document

  key :name, String
  key :age, Integer
  
end
