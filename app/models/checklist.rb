class Checklist
  include MongoMapper::Document

  key :email, String, required: => true
  timestamps!
  key :browser, String, required: => true
  key :checklist_id, Integer
  many :sections, String


  validates_presence_of :email
  validates_presence_of :browser

  validate :validate_browser

  def validate_browser
  	unless browser == "Chrome" ||
  		browser == "Firefox" ||
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

  
  key :aoe_text, String
  key :p_one, Boolean
  key :success, Boolean
  key :failure, Boolean
  key :blocker, Boolean
  key :ticket_number, String
  end
end
