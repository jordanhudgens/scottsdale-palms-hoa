module SupportRequestsHelper
  def request_category_array
    request_category_keys = SupportRequest.request_categories.keys

    request_category_keys.each_with_object([]) do |k, arr|
      arr << [k.gsub('_', ' ').titleize, k]
    end
  end

  def request_status_array
    request_status_keys = SupportRequest.statuses.keys

    request_status_keys.each_with_object([]) do |k, arr|
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

  def image_render_engine(support_request)
    if support_request.request_image.blank?
      image_tag('thumb-default.jpg')
    else
      image_tag(support_request.request_image.url)
    end
  end
end
