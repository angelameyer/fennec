class Section_template
  include MongoMapper::EmbeddedDocument

  key :name, String
  many :aeo_templates
  belongs_to :checklist_template
end
