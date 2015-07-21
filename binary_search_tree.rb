class BinarySearchTree
  attr_reader :value, :left

  def initialize(value)
    @value = value
  end

  def insert(value)
    self.left = BinarySearchTree.new(value)
  end

  private
  attr_writer :left
end