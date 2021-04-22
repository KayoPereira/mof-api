class Api::V1::AlternativesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_alternative, only: [ :show, :update ]

  def index
    @alternatives = policy_scope(Alternative)
  end

  def show
  end

  def update
    if @alternative.update(alternative_params)
      render :show
    else
      render_error
    end
  end

  def create
    @alternative = Alternative.new(alternative_params)
    authorize @alternative
    if @alternative.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def set_alternative
    @alternative = Alternative.find(params[:id])
    authorize @alternative
  end

  def alternative_params
    params.require(:alternative).permit(:description, :is_true)
  end

  def render_error
    render json: { errors: @alternative.errors.full_messages },
      status: :unprocessable_entity
  end
end