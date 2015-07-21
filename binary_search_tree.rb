class BinarySearchTree
  attr_reader :value, :left, :right

  def initialize(value)
    @value = value
  end

  def insert(new_value)
    if new_value < self.value
      if self.left
        self.left.insert(new_value)
      else
        self.left = BinarySearchTree.new(new_value)
      end
    else
      self.right = BinarySearchTree.new(new_value)
    end
  end

  private
  attr_writer :left, :right
end