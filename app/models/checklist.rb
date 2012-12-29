class Checklist
  include MongoMapper::Document

  key :email, String
  key :browser, String 
  key :finished_at, Integer
  key :checklist_id, Integer
  key :os, String
  key :name, String
  key :server, String
  key :sections
  many :sections


 # validates_presence_of :email
 # validates_presence_of :browser
 # validates_presence_of :os

 # validate :validate_email
 # validate :validate_browser
 # validate :validate_os

  def validate_email
  	unless browser == "Chrome" ||
  		browser == "Firefox" ||
  		browser == "IE"
  		errors.add(:browser, "Not a valid email!")
  	end
  end

  def validate_browser
  	unless browser == "Chrome" ||
  		browser == "Firefox" ||
  		browser == "IE"
  		errors.add(:browser, "Not a valid browser!")
  	end
  end

  def validate_opearating_system
  	unless os == "mac" ||
  		os == "pc" ||
  		errors.add(:os, "Not a valid OS!")
  	end
  end
end
