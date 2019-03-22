//
//  List.swift
//  ObjcSwiftInterop
//
//  Created by Maksim Ivanov on 22/03/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import Foundation

public class List<T> : NSObject, Container {
    
    private var size: Int = 0
    
    private var first: Node?
    private var last: Node?
    
    public func append(_ item: T) {
        let node = Node(item)
        
        if first == nil {
            first = node
            last = node
        } else {
            last?.next = node
            last = node
        }
        
        size += 1
    }
    
    public var count: Int {
        return size
    }
    
    public subscript(i: Int) -> T {
        get {
            var node = first
            var j = 0
            
            while (i != j && j < size) {
                node = node?.next
                j += 1
            }
            
            return (node?.value)!
        }
    }
    
    func removeFirstElement() {
        first = first?.next
        
        if size > 0 {
            size -= 1
        }
    }
    
    private class Node {
        var value: T?
        var next: Node?
        
        init(_ val: T) {
            value = val
        }
    }
}
