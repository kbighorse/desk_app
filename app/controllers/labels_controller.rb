class LabelsController < ApplicationController
  def index
  	@labels = DeskApi.labels.entries
  end

  def new
  end

  def create
    DeskApi.labels.create({
      name: params[:name],
      description: params[:description],
      types: params[:types],
      color: params[:color]
    })
    flash[:notice] = 'Label created.'
    redirect_to labels_path
  end

end
