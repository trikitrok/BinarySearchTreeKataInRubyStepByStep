class BinarySearchTree
  def initialize(value)
    @value = value
  end

  def insert(new_value)
    if new_value < value
      self.left = add_value_at(left, new_value)
    else
      self.right = add_value_at(right, new_value)
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

  def add_value_at(sub_tree, new_value)
    if sub_tree
      sub_tree.insert(new_value)
      sub_tree
    else
      BinarySearchTree.new(new_value)
    end
  end
end