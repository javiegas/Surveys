class StaticPagesController < ApplicationController
  add_breadcrumb "home", :root_path
  
  def home
    if !signed_in?
      redirect_to login_path
    end
    #render layout: false
  end

  def help
  end

  def about
  end
  
  def contact
  end
end
