class Api::UsersController < ApplicationController


  def index
    ids = params[:ids]
   if ids.blank?
     @users = User.all
   else
     wanted_ids = ids.split(',')
     @users = User.where(:id => wanted_ids)
   end
   render :json => @users

    #respond_with User.all ...can be used with responder gem
  end

  def show
    @user = User.find(params[:id])
    render :json => @user
  end

  def new
  end

  def create
    #@user = User.new(params[:user])
    #if @user.save{
    #  render json: @user, notice: "user created!"
    #}

  end

  def update
  end

  def destroy
  end


end
