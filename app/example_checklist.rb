class Checklist
  attr_accessor :email, :browser

  def initialize(attributes = {})
    @email  = attributes[:email]
    @browser = attributes[:browser]
  end

  def formatted_browser
    "#{@email} <#{@browser}>"
  end
end