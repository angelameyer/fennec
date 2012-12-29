class Section
  include MongoMapper::EmbeddedDocument

  key :name, String
  many :aeos
end
