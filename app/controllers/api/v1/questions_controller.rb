class Api::V1::QuestionsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_question, only: [ :show, :update, :destroy ]
  
  def index
    @questions = policy_scope(Question)
  end

  def show
  end
  
  def update
    if @question.update(question_params)
      render :show
    else
      render_error
    end
  end

  def create
    @question = Question.new(question_params)
    authorize @question
    if @question.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @question.destroy
    head :no_content
  end

  private

  def set_question
    @question = Question.find(params[:id])
    authorize @question
  end

  def question_params
    params.require(:question).permit(:title)
  end

  def render_error
    render json: { errors: @question.errors.full_messages },
      status: :unprocessable_entity
  end
end