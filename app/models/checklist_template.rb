class Checklist_template
  include MongoMapper::Document
  
  key :name, String
  many :section_templates

end