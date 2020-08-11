class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(tasks_params)
    @task = Task.save
    redirect_to task_path(@tasks)
  end

  def edit
    @task = Task.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:task).permit(:title, :details, :confirmed)
  end
end
