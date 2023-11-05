//
//  Node.swift
//  LinkedList
//
//  Created by Amir Mahdi Abravesh on 11/5/23.
//

import Foundation

class Node<Item> {
    let value: Item
    var next: Node?
    
    init(value: Item) {
        self.value = value
        self.next = nil
    }
}
