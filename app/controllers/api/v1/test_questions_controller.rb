class Api::V1::TestQuestionsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_test_question, only: [ :show, :update, :destroy ]

  def index
    @test_questions = policy_scope(TestQuestion)
  end

  def show
  end

  def update
    if @test_question.update(test_question_params)
      render :show
    else
      render_error
    end
  end

  def create
    @test_question = TestQuestion.new(test_question_params)
    authorize @test_question
    if @test_question.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @test_question.destroy
    head :no_content
  end

  private

  def set_test_question
    @test_question = TestQuestion.find(params[:id])
    authorize @test_question
  end

  def test_question_params
    params.require(:test_question).permit(:test_id, :question_id)
  end

  def render_error
    render json: { errors: @test_question.errors.full_messages },
    status: :unprocessable_entity
  end
end