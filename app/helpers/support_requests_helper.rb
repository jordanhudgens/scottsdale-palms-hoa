module SupportRequestsHelper
  def request_category_array
    request_category_keys = SupportRequest.request_categories.keys

    request_category_keys.each_with_object([]) do |k, arr|
      arr << [k.gsub('_', ' ').titleize, k]
    end
  end
end
