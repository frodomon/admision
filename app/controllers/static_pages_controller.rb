class StaticPagesController < ApplicationController
  def home
  	render layout: 'empty'
  end
  def dashboard
    render layout: 'empty'
  end
  def index
  	if user_signed_in?
  	  redirect_to requests_path
  	else
  	  redirect_to new_user_session_path
  	end
  end

  def thanks
  end
  
  def pep
  end
end