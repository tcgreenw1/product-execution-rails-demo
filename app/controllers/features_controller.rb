class FeaturesController < ApplicationController
  def index
    @features = Feature.all
  end

  def show
    @feature = Feature.find(params[:id])
    @stories = @feature.stories
  end
end
