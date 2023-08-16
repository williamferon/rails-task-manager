class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def update
    @task.update(task_params_params)
    #redirect_to task_path(@task)
  end

  def task_params
    params.require(:task).permit(:name, :details, :completed)
  end
end
