class SessionsController < ApplicationController
  def new
  end

  def create
    def create
      @user = User.find_by(name: params[:user][:name])
      if @user.nil?
        redirect_to users_sign_in_path, alert: 'El usuario no existe'
        return
      end
  
      if @user.password == params[:user][:password]
        session[:user_id] = @user.id
        redirect_to root_path
      else
        redirect_to users_sign_in_path, alert: 'El password no es válido'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
