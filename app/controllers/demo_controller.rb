class DemoController < ApplicationController

  layout false

  def index
    # the default is render('index')
    # render is oftern used with if/else statements
    render ('index')
    
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    render ('hello')
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
    # The routed to the action 'index' which renders the 'index' action. This is often used for sign in verificication etc, or when the browser needs to perfom another task before rendering a selected page. 
  end

  def mike_resume
    redirect_to('http://resume.mikezbrozek.codes', allow_other_host:true)
    
  end   
end
