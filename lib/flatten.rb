class Flatten
  # flattens an array of nested arrays
  def self.flattening_array(data, result=[])
    return false if data.length < 1
    data.each do |element|
      if element.is_a?(Array)
        flattening_array(element, result)
      else
        result << element
      end
    end

    data.size == result.size ? data : result
  end
end
