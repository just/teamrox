class UserController < ApplicationController
  def new
    if request.post?
        @user = User.new("name"=>params['user'][:name], "email"=>"doituself@tolearn.rails",   "password"=>params['user'][:password])
	      if @user.save
	              redirect_to :controller =>'team' , :action => 'index'
              end
    end
  end

  def login
    if request.post?
       begin
       session[:user] = User.check(params['user'][:name],params['user'][:password]).id
       rescue
       flash[:notice] = "Username or password invalid"
       end
    end     
  end

  def logout
  	session[:user] = nil
  	redirect_to :controller => :team, :action => :index
  	
  end

end
