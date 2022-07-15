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

  def any?(params = nil)
    each do |item|
      if params.is_a?(Class)
        return true if item.is_a?(params)
      elsif params.is_a?(Regexp)
        return true if params.match(item)
      elsif block_given?
        return true if yield item
      elsif item == params
        return true
      end
    end
    false
  end
  
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexit
