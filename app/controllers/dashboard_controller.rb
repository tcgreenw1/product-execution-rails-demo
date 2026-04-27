class DashboardController < ApplicationController
  def index
    @features = Feature.all
    @stories = Story.all
    @tasks = Task.all
  end
end
