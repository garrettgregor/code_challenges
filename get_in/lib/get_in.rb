class GetIn
  def getin(data, directions)
    results = []

    directions.flatten.each do |direction|
      if data[direction].is_a?(String)
        results << data[direction]
      elsif data[direction].is_a?(Hash)
        data = data[direction]
      end
    end

    results.length == 1 ? results[0] : results
  end
end
