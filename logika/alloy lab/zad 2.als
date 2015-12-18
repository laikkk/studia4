sig BinTree {root: one Node }

sig Node {
  left, right: lone Node,
  value: one Int,
}

fact {

//  graf drzewa jest acykliczny:
  all n: Node | not n in n.^(left+right)

// każdy wierzchołek poza korzeniem posiada rodzica
  all b: BinTree | no b.root.~(left+right)
  some b:BinTree | all n:Node | n in b.root.*(left+right)

// lewe i prawe poddrzewo są rozłączne:
  all n: Node | some n.left and some n.right =>
    no n.left.*(left+right) & n.right.*(left+right)

// balansowanie drzewa
	all n : Node | #n.left.^(left+right) <= #n.right.^(left+right) + 1
	all n : Node | #n.right.^(left+right) <= #n.left.^(left+right) + 1

// wartosci sa uporzadkowane
  all n:Node |
    (some n.left => all n1: Node |
      n1 in n.left.*(left+right) => n1.value < n.value) and
    (some n.right => all n1: Node |
      n1 in n.right.*(left+right) => n.value < n1.value)
}

pred prez {
  some Node
  #{n : Node | some n.left and some n.right} >=3
}
run prez for 3 but exactly 7 Node, exactly 1 BinTree
