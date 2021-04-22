class Api::V1::UsersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_user, only: [ :show, :update, :destroy ]

  # ---------->>>>>  DONT HAVE CREATE ROUTES  <<<<<----------

  def index
    @users = policy_scope(User)
  end

  def show
  end

  def update
    if @user.update(user_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:name)
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end
end