class CasesController < ApplicationController
  def show
  	case_id = params.fetch(:id)
  	@case = DeskApi.cases.find case_id
  end

  def edit
    case_id = params.fetch(:id)
    @case = DeskApi.cases.find case_id
    @labels = DeskApi.labels.entries
  end

  def update
    case_id = params.fetch(:id)
    label_id = params.fetch(:label_id)
    c = DeskApi.cases.find case_id
    label = DeskApi.labels.find label_id
    c.labels.entries << label

    redirect_to case_path(case_id)
  end

end
