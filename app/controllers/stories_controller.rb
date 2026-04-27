class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end
  def show
    @story = Story.find(params[:id])
    @tasks = @story.tasks

    @todo = @tasks.where(status: "To Do")
    @in_progress = @tasks.where(status: "In Progress")
    @done = @tasks.where(status: "Done")
  end
end
