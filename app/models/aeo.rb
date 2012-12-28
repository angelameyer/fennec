class Aeo
  include MongoMapper::EmbeddedDocument
  
  key :aeo_text, String
  key :p_one, Boolean
  key :success, Boolean
  key :failure, Boolean
  key :blocker, Boolean
  key :ticket_number, String
  belongs_to :section
end