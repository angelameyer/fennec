class Checklist
  include MongoMapper::Document

  key :email, String
  timestamps!
  key :browser, String
  key :checklist_id, Integer
  many :sections, String


  validates_presence_of :email
  validates_presence_of :browser

  validate :validate_browser

  def validate_browser
  	unless browser == "Chrome" ||
  		browser == "Safari" ||
  		browser == "IE"
  		errors.add(:browser, "Not a valid browser!")
  	end
  end
end

class Sections
  include MongoMapper::EmbeddedDocument

  many :aoe, String

  end
end


class Aoe
  include MongoMapper::EmbeddedDocument

  key :ticket_number, String
  key :p_one, Boolean
  key :success, Boolean
  key :failure, Boolean
  key :blocker, Boolean
  
  end
end
