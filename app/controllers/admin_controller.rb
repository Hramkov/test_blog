class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize

  # get "admin"
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  # put/patch "admin/:id"
  def update
    # user = User.find(params[:id]
    # user.remove_role user.roles.first
    # new_role = Role.find_by_name(params[:role])
    # user.add_role new_role
    # redirect_to '/admin'
  end

  private

  def authorize
    if !current_user.has_role? :admin
      render text:"No access for you!"
    end
  end
end
