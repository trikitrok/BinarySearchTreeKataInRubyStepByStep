class BinarySearchTree
  def initialize(value)
    @value = value
  end

  def insert(new_value)
    if new_value < value
      if left
        left.insert(new_value)
      else
        self.left = BinarySearchTree.new(new_value)
      end
    else
      if right
        right.insert(new_value)
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

  def in_order_as_list()
    left_branch().push(value).concat(right_branch())
  end

  private
  attr_accessor :left, :right
  attr_reader :value

  def left_branch
    if left
      left.in_order_as_list()
    else
      []
    end
  end

  def right_branch
    if right
      right.in_order_as_list()
    else
      []
    end
  end
end