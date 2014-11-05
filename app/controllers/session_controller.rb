class SessionController < ApplicationController
  def index
  end

  def show
  end

  def new 
    render 'new'
  end

  def create
    @username = params[:session][:username]
    @password = params[:session][:password]
    @user     = Registration.auth(@username,@password)
    if @user
      redirect_to :action => 'index' and return
    else
      flash[:error]="Username or Password is Invalid"
      redirect_to :action => 'new' and return
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
