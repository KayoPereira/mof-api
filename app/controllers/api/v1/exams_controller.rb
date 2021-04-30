class Api::V1::ExamsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_exam, only: [ :show, :update, :destroy ]

  def index
    @exams = policy_scope(Exam)
  end

  def show
  end

  def update
    if @exam.update(exam_params)
      render :show
    else
      render_error
    end
  end

  def create
    @exam = Exam.new(exam_params)
    authorize @exam
    if @exam.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @exam.destroy
    head :no_content
  end

  private

  def set_exam
    @exam = Exam.find(params[:id])
    authorize @exam
  end

  def exam_params
    params.require(:exam).permit(:test_id, :olympic_id)
  end

  def render_error
    render json: { errors: @exam.errors.full_messages },
      status: :unprocessable_entity
  end
end