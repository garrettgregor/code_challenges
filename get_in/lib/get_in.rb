class GetIn
  def getin(data, directions)
    results = []

    directions.flatten!

    directions.each do |direction|
      if data.values_at(direction).first.is_a?(String)
        results << data.values_at(direction).first
      elsif data.values_at(direction).first.is_a?(Hash)
        data = data.values_at(direction).first
      end
    end

    if results.length == 1
      results.first
    else
      results
    end
  end
end
