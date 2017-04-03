class Item
  attr_accessor :benefit, :weight, :final_amount, :value_index

  def initialize(benefit, weight)
    @benefit = benefit # bi
    @weight = weight # wi
    @final_amount = nil # xi
    @value_index = nil # vi
  end
end
