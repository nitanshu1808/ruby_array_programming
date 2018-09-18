require 'calculate_index'

describe CalculateIndex do

    it "returns false if size of array is less than 2 and target is nil" do
      arr     = [4]
      target  =  12
      obj = CalculateIndex.new(arr, target)
      expect(obj.find_sum).to eq(false)
    end

    it "return false if the match is not found" do
      arr     = [4,7,9,2,6]
      target  =  12
      obj = CalculateIndex.new(arr, target)
      expect(obj.find_sum).to eq(false)
    end

    it "return indices of the two numbers such that they add up to a specific target" do
      arr     = [4,7,9,2,6]
      target  =  8
      obj = CalculateIndex.new(arr, target)
      expect(obj.find_sum).to eq([3, 4])
    end
end
