class CalculateIndex
  # Returns a valid object
  def initialize(arr=[], target)
    @array  = arr
    @target = target
    @hash   = {}
  end

  # Returns the indices of the two array elements
  # which on addtion results a target
  def find_sum
    return false if @array.size <= 1 && @target.nil?
    @array.each_with_index do |value, index|
      if @hash.key?(value)
        return [@hash[value], index]
      else
        difference = @target - value
        @hash[difference] = index
      end
    end
    return false
  end

end
