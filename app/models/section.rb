class Section
  include MongoMapper::EmbeddedDocument

  key :name, String
  belongs_to :checklist
  many :aeos

end
