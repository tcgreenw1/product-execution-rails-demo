class FeaturesController < ApplicationController
    def index
      @features = Feature.all

      if params[:status]
        @features = @features.where(status: params[:status])
      end

      if params[:sort]
        @features = @features.order(params[:sort])
      else
        @features = @features.order(priority: :asc)
      end
    end
  def show
    @feature = Feature.find(params[:id])
    @stories = @feature.stories
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)
    if @feature.save
      redirect_to features_path
    else
      render :new
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:title, :description, :priority, :status)
  end
end
