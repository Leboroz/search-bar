module SearchesHelper
  def filter(list, content)
    list.select { |search| search.content.include? content }
  end
end
