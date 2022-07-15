# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
module MyEnumerable
  def each(&block)
    @list.each(&block)
  end

end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
