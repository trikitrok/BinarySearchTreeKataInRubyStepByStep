class BinarySearchTree
  def initialize(value)
    @value = value
  end

  def insert(new_value)
    if new_value < value
      self.left_tree = add_value_at(left_tree, new_value)
    else
      self.right_tree = add_value_at(right_tree, new_value)
    end
  end

  def self.create_from_list(numbers)
    tree = BinarySearchTree.new(numbers.first)
    numbers.drop(1).reduce(tree) do |tree, value|
      tree.insert(value)
      tree
    end
  end

  def in_order()
    sorted_list = tree_in_order left_tree
    sorted_list.push(value)
    sorted_list.concat(tree_in_order right_tree)
  end

  private
  attr_accessor :left_tree, :right_tree
  attr_reader :value

  def tree_in_order tree
    if tree
      tree.in_order()
    else
      []
    end
  end

  def add_value_at(tree, new_value)
    if tree
      tree.insert(new_value)
      tree
    else
      BinarySearchTree.new(new_value)
    end
  end
end