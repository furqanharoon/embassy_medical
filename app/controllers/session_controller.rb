class SessionController < ApplicationController
  def index
  end

  def show
  end

  def new
    flash[:notice]="username or password is invalid" 
    render 'new'
  end

  def create
    @username = params[:session][:username]
    @password = params[:session][:password]
    @user    = Registration.auth(@username,@password)
    if @user
      flash[:notice] = "Ahoy!" 
      redirect_to :action => 'index' and return
    else
      flash[:notice]="username or password is invalid" 
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
