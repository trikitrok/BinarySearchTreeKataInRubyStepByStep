require './binary_search_tree'

describe BinarySearchTree do
  it "creates a tree with just one node" do
    tree = BinarySearchTree.new(3)

    expect(tree.value()).to equal 3
  end

  it "creates a tree with a node that has a left son" do
    tree = BinarySearchTree.new(4)
    tree.insert(1)

    expect(tree.value()).to equal 4
    expect(tree.left().value()).to equal 1
  end

  it "creates a tree with a node that has a right son" do
    tree = BinarySearchTree.new(2)
    tree.insert(5)

    expect(tree.value()).to equal 2
    expect(tree.right().value()).to equal 5
  end

  it "creates a tree with a node that has a left son that has itself a left son" do
    tree = BinarySearchTree.new(4)
    tree.insert(1)
    tree.insert(-5)

    expect(tree.value()).to equal 4
    expect(tree.left().value()).to equal 1
    expect(tree.left().left().value()).to equal -5
  end
end