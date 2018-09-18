require 'flatten'

describe Flatten do
  it "validates the array presence" do
    expect(Flatten.flattening_array([])).to eq(false)
  end

  it "validates array length" do
    arr = [[2, [3, 4]], 5,[ 42, 54, 65, 75], 19, [13, 32, 15]]
    expect(Flatten.flattening_array(arr).size).to eq(12)
  end

  it "flattens an array of nested arrays" do
    arr = [[2, [3, 4], 5],[ 42, 54, 65, 75], 19, [13, 32, 15]]
    expect(Flatten.flattening_array(arr)).to eq([2, 3, 4, 5, 42, 54, 65, 75, 19, 13, 32, 15])
  end

end
