class Checklist
  include MongoMapper::Document

  key :email, String
  key :browser, String

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
