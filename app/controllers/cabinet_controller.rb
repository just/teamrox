class CabinetController < ApplicationController
  def index
    @users = User.find(:first, :conditions => ["id = ?", session[:user]])

    if @users.blank?
          @users =  User.new
	  @users.id = -1
	  @users.name = 'Anonymus'
    end   
          respond_to do |format|
	  format.html
	  format.xml  { render :xml => @users }
  end
  end
end
