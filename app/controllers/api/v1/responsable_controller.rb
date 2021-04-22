class Api::V1::ResponsableController < Api::V1::BaseController
  def index
    @responsable = policy_scope(Responsable)
  end
end