module ApplicationHelper
  def case_path(c)
    "/cases/#{c.href.split('cases/').last}"
  end

end
