class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      # Redirect to the show page
      redirect_to task_path(@task.id)
    else
      render :new
    end
  end
   
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])  
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task.id)
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end
  

  private

  def task_params
    return params.require(:task).permit(:title, :details, :completed)    
  end
  

end
