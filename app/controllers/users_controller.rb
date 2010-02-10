class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => [:edit, :update, :destroy]
  
  def new
    @user = User.new
  end

  def edit
    @user = current_user
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      if @user.respond_to?(:confirm!)
        flash[:notice] = t('devise.confirmations.send_instructions')
        sign_in_and_redirect @user if @user.class.confirm_within > 0
      else
        flash[:notice] = t('flash.users.create.notice', :default => 'User was successfully created.')
        redirect_to root_path
      end
    else
      render :new
    end
  end
  
  def update
    @user = current_user
      # Could be splitted in two actions
      method = params[:user][:password] ? :update_with_password : :update_attributes
      if @user.send(method, params[:user])
        flash[:notice] = 'Updated successfully'
        redirect_to root_path
      else
        render :edit
      end
  end

  def destroy
    current_user.destroy
    sign_out current_user
    flash[:notice] = t('flash.users.destroy.notice', :default => 'User was successfully destroyed.')
    redirect_to root_path
  end
end
