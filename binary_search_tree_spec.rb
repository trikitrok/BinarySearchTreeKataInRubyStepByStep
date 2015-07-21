require './binary_search_tree'

describe BinarySearchTree do
  it "creates a tree without any sons" do
    tree = BinarySearchTree.new(3)

    expect(tree.value()).to equal 3
  end

  it "creates a tree with left and right sons" do
    tree = BinarySearchTree.new(2)
    tree.insert(5)
    tree.insert(1)

    expect(tree.value()).to equal 2
    expect(tree.left().value()).to equal 1
    expect(tree.right().value()).to equal 5
  end

  it "creates a comple tree" do
    tree = BinarySearchTree.new(4)
    tree.insert(6)
    tree.insert(5)
    tree.insert(8)
    tree.insert(2)
    tree.insert(3)
    tree.insert(1)

    expect(tree.value()).to equal 4
    expect(tree.right().value()).to equal 6
    expect(tree.right().left().value()).to equal 5
    expect(tree.right().right().value()).to equal 8
    expect(tree.left().value()).to equal 2
    expect(tree.left().right().value()).to equal 3
    expect(tree.left().left().value()).to equal 1
  end
end