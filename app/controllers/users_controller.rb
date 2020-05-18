class UsersController < ApplicationController
  before_action :load_user, only: %i[show edit update destroy]

  # GET /users
  def index
    authorize :user
    @users = policy_scope(User).order(id: :desc)
  end

  # GET /users/:id
  def show; end

  # GET /user/:id/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User has been created.'
    else
      render :new
    end
  end

  # GET /users/:id/edit
  def edit; end

  # PUT /users/:id
  def update
    if @user.update_attributes(user_params)
      redirect_to @user, notice: 'User has been updated.'
    else
      render :edit
    end
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User has been deleted.'
  end

  private

  def user_params
    params.require(:user).permit(policy(@user).permitted_attributes)
  end

  def load_user
    @user = User.find(params[:id])
    authorize @user
  end
end
