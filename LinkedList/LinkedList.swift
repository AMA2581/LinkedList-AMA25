//
//  LinkedList.swift
//  LinkedList
//
//  Created by Amir Mahdi Abravesh on 11/5/23.
//

import Foundation

class LinkedList<Item>{
    var head: Node<Item>?
    private var tail: Node<Item>?
    
    var first: Node<Item>? {
        return head
    }
    
    var last: Node<Item>? {
        return tail
    }
    
    var isEmpty: Bool {
        head == nil
    }
    
    var count: Int {
        var currentNode = head
        var counter = 0
        
        while currentNode != nil{
            counter += 1
            currentNode = currentNode?.next
        }
        
        return counter
    }
    
    func append(value: Item){
        let newNode = Node(value: value)
        
        if let tailNode = tail{
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    func nodeAt(index: Int) -> Item? {
        assert(index >= 0, "index cannot be grater than zero!")
        
        var currentNode = head
        var i = index
        
        while currentNode != nil {
            if i == 0 {
                return currentNode?.value
            }
            
            i -= 1
            currentNode = currentNode?.next
        }
        
        return nil
    }
    
    func removeAt(index: Int){
        assert(index >= 0, "index cannot be grater than zero!")
        
        var currentNode = head
        var i = index
        
        if index == 0 {
            head = head?.next
        } else {
            while currentNode != nil {
                if i == 1 {
                    currentNode?.next = currentNode?.next?.next
                }
                i -= 1
                currentNode = currentNode?.next
            }
        }
    }
    
    func removeAll(){
        head = nil
        tail = nil
    }
}

// MARK: - CustomStringConvertible
extension LinkedList: CustomStringConvertible {
    var description: String{
        let start = "linked list: [HEAD] "
        var elements: [String] = []
        var currentNode = head
        
        while currentNode != nil {
            elements.append(String(describing: currentNode!.value))
            currentNode = currentNode?.next
        }
        
        let output = elements.joined(separator: " -> ")
        
        return start + output
    }
    
    func printLinkedList() {
        print(description)
    }
}
