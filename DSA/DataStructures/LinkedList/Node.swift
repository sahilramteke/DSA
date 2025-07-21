//
//  Node.swift
//  DSA
//
//  Created by Sahil Ramteke on 21/07/25.
//

class Node<T> {
  var value: T
  var next: Node?

  init (_ value: T, next: Node? = nil) {
    self.value = value
    self.next = next
  }
}
