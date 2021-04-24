class Api::V1::SubscriptionsController < Api::V1::BaseController
  before_action :set_subscription, only: [ :show ]
  
  def index
    @subscriptions = policy_scope(Subscription)
  end

  def show
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:id])
    authorize @subscription
  end
end