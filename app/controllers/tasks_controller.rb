class TasksController < ApplicationController
  def update
    @task = Task.find(params[:id])
    @task.update(status: params[:status])
    redirect_back fallback_location: root_path
  end
end
