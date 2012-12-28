class Aeo
  include MongoMapper::EmbeddedDocument
  
  key :aeo_text, String

  belongs_to :section_template
end