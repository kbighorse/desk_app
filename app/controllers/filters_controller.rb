class FiltersController < ApplicationController
  def index
  	@filters = DeskApi.filters.entries
  end

  def show
  	filter_id = params.fetch(:id)
  	@filter = DeskApi.filters.find filter_id
  	@cases = DeskApi.cases(filter_id: filter_id).embed(:label).entries
  end

end
