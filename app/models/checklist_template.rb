class Checklist
  include MongoMapper::Document
  
  key :name, String
  many :sections

end