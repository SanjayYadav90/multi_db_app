class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html  { redirect_to(users_index_url, :notice => 'Post was successfully created.') }
        format.json  { render :json => users_index_url, :status => :created, :location => @user }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def user_params
    params.require(:user).permit(:name, :age, :address)
  end
end
