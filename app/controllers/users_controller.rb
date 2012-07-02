class UsersController < ApplicationController
  load_and_authorize_resource :only => [:show,:new,:destroy,:edit,:update]

  def index
    @users = User.accessible_by(current_ability, :index)
    respond_to do |format|
      format.json { render :json => @users }
      format.xml  { render :xml => @users }
      format.html
    end
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def create
  end

  def update
  end


end
