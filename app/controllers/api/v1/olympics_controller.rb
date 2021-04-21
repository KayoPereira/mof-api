class Api::V1::OlympicsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_olympic, only: [ :show, :update, :destroy ]

  # ---------->>>>>  CORRIGIR AS POLICIES  <<<<<----------

  def index
    @olympics = policy_scope(Olympic)
  end

  def show
  end

  def update
    if @olympic.update(olympic_params)
      render :show
    else
      render_error
    end
  end

  def create
    @olympic = Olympic.new(olympic_params)
    authorize @olympic
    if @olympic.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @olympic.destroy
    head :no_content
  end

  private

  def set_olympic
    @olympic = Olympic.find(params[:id])
    authorize @olympic
  end

  def olympic_params
    params.require(:olympic).permit(:title, :description, :edition, :start_registration, :end_registration, :image)
  end

  def render_error
    render json: { errors: @olympic.errors.full_messages },
      status: :unprocessable_entity
  end
end