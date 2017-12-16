module SupportRequestsHelper
  def request_category_array
    request_category_keys = SupportRequest.request_categories.keys

    request_category_keys.each_with_object([]) do |k, arr|
      arr << [k.gsub('_', ' ').titleize, k]
    end
  end

  def status_badge(support_request)
    if support_request.unresolved?
      "<span class='badge badge-danger'>Unresolved</span>".html_safe
    elsif support_request.in_progress?
      "<span class='badge badge-warning'>In Progress</span>".html_safe
    elsif support_request.resolved?
      "<span class='badge badge-primary'>Resolved</span>".html_safe
    end
  end
end
