require './binary_search_tree'

describe BinarySearchTree do
  it "creates a tree with just one node" do
    tree = BinarySearchTree.new(3)

    expect(tree.value()).to equal 3
  end
end