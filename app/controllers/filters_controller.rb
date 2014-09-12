class FiltersController < ApplicationController
  def index
  	@filters = DeskApi.filters.entries
  end

  def show
  	@filter = DeskApi.filters.find params.fetch(:id)
  end

end
