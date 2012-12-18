class SectionPagesController < ApplicationController
  
  def home
  end

  def checklist
  	id = params['checklist_id']
	@checklist = c
  	c = Checklist.find_by_id(id)
  end

  def create
	c = Checklist.new(params[:email => email, :browser => browser, :os => os])
  	c.save
	redirect "/checklist?checkist_id=#{c.id}"
  end

  def topic2
  end

  def finish
  end

end
