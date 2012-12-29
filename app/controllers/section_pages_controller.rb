cclass SectionPagesController < ApplicationController
  
  def home
  end

  def toc
  end
  
  def section
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

  def save_aeo
  	aeo_id = params['id']
  	aeo_state = params['state']

  	aeo = AEOModel.find_by_id(aeo_id)
  	aeo.state = aeo_state
  	aeo.save()

  	redirect "/section"
  end

  def finish
  end

end
