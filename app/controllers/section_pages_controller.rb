cclass SectionPagesController < ApplicationController
  
  def home
  end

  def toc
  end
  
  def checklist
  	id = params['checklist_id']
  	@checklist = Checklist.find_by_id(id)
  end

  def create
  	c = Checklist.new(params[:email => email, :browser => browser, :os => os])
  	c.save
  	redirect "/checklist?checklist_id=#{c.id}"
  end

  def topic2
  end

  def finish
  end

end
