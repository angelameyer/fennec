class Section
  include MongoMapper::Document

  key :name, String
  belongs_to :checklist
  
end
