module ApplicationHelper
  def date_parse(date)
    Date.parse(date)
  end

  def handle_error(error, field_name)
    binding.pry
    # arrays = object.gsub(/<div.*?>|<\/div>/, '').split("、")
    # return if arrays.blank?

    # arrays.each { |arr| arr.insert(0, attr) }
    # arrays.insert(0, array_shift)
    # errors = []
    # arrays.each { |arr| errors << tag.div(arr) }

    # safe_join(a)
  end
end
