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
      if self.right
        self.right.insert(new_value)
      else
        self.right = BinarySearchTree.new(new_value)
      end
    end
  end

  def self.create_from_list(numbers)
    tree = BinarySearchTree.new(numbers.first)
    numbers.drop(1).reduce(tree) do |tree, value|
      tree.insert(value)
      tree
    end
  end

  private
  attr_writer :left, :right
end