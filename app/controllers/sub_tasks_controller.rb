class SubTasksController < ApplicationController
  before_action :set_sub_task, only: [:show, :update, :destroy]

  # GET /sub_tasks
  def index
    @sub_tasks = SubTask.all
  end

  # GET /sub_tasks/1
  def show
    
  end

  # POST /sub_tasks
  def create
    @sub_task = SubTask.new(sub_task_params)

    if @sub_task.save
      @sub_task
    else
      render json: @sub_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sub_tasks/1
  def update
    if @sub_task.update(sub_task_params)
      @sub_task
    else
      render json: @sub_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sub_tasks/1
  def destroy
    @sub_task.destroy
    @sub_task
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_task
      @sub_task = SubTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_task_params
      params.require(:sub_task).permit(:task_id, :name, :completed)
    end
end
