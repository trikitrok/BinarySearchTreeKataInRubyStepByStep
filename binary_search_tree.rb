class BinarySearchTree
  attr_reader :value, :left, :right

  def initialize(value)
    @value = value
  end

  def insert(new_value)
    if new_value < self.value
      self.left = BinarySearchTree.new(new_value)
    else
      self.right = BinarySearchTree.new(new_value)
    end
  end

  private
  attr_writer :left, :right
end