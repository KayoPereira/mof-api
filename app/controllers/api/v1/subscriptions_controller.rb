class Api::V1::SubscriptionsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_subscription, only: [ :show, :update ]
  
  def index
    @subscriptions = policy_scope(Subscription)
  end

  def show
  end

  def update
    if @subscription.update(subscription_params)
      render :show
    else
      render_error
    end
  end

  def create
    @subscription = Subscription.new(subscription_params)
    authorize @subscription
    if @subscription.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:id])
    authorize @subscription
  end

  def subscription_params
    params.require(:subscription).permit(:brazil_state_id, :county, :school)
  end

  def render_error
    render json: { errors: @subscription.errors.full_messages },
      status: :unprocessable_entity
  end
end