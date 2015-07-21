class BinarySearchTree
  attr_reader :value, :left, :right

  def initialize(value)
    @value = value
  end

  def insert(value)
    if value < self.value
      self.left = BinarySearchTree.new(value)
    else
      self.right = BinarySearchTree.new(value)
    end
  end

  private
  attr_writer :left, :right
end