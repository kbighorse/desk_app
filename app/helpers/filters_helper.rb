module FiltersHelper
	def filter_path(filter)
		"filters/#{filter.href.split('filters/').last}"
	end

end
