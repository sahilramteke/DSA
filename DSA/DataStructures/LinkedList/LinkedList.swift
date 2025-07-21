//
//  LinkedList.swift
//  DSA
//
//  Created by Sahil Ramteke on 21/07/25.
//

class LinkedList<T> {
  var head: Node<T>?

  init(_ values: [T]) {
    var prev: Node<T>?
    values.forEach {
      if head == nil {
        head = Node($0)
        prev = head
      } else {
        if let _ = prev {
          prev?.next = Node($0)
          prev = prev?.next
        }
      }
    }
  }

  func printList() {
    var current = head
    var result: [T] = []
    while let node = current {
      result.append(node.value)
      current = node.next
    }
    print(result)
  }
}
