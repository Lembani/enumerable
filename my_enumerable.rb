# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
module MyEnumerable
  def each(&block)
    @list.each(&block)
  end
  def all?(params = nil)
    each do |item|
      if block_given?
        return false unless yield item
      elsif params.is_a?(Class)
        return false unless item.is_a?(params)
      elsif params.is_a?(Regexp)
        return false unless params.match(item)
      else
        return false unless item == params
      end
    end
    true
  end  
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexit
