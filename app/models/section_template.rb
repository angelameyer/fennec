class Section
  include MongoMapper::EmbeddedDocument

  key :name, String
  many :aeos

  belongs_to :checklist_template
end
