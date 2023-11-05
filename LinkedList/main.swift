//
//  main.swift
//  LinkedList
//
//  Created by Amir Mahdi Abravesh on 11/5/23.
//

import Foundation

var list: LinkedList = LinkedList<Int>()
list.append(value: 1)
list.append(value: 2)
list.append(value: 3)
list.append(value: 4)

func reverse(input: LinkedList<Int>) -> LinkedList<Int> {
    
    let tempList: LinkedList = LinkedList<Int>()
    
    var i = input.count
    
    while i != 0 {
        tempList.append(value: input.nodeAt(index: i) ?? 0)
        i -= 1
    }
    
    return tempList
}
list = reverse(input: list)
list.printLinkedList()

func display(input: LinkedList<Int>){

}

func removeGT(a: Int){

}


