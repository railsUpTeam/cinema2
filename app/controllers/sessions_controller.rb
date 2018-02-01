class SessionsController < ApplicationController
  def new
  end

  def create
  	usr = usr.find_by(email: params[:email])
  	if usr and usr.authenticate(params[:password])
  		session[:usr_id] = usr.id
  		redirect_to admin_url, notice: "Zostałeś zalogowany"
    else
      redirect_to login_url, alert: "Hasło lub emeil są nieprawidłowe"
    end
  end

  def destroy
  	session[:usr_id] = nil
    redirect_to lectures_url, notice: "Zostałeś wylogowany"
  end
end
