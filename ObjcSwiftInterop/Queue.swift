//
//  Queue.swift
//  ObjcSwiftInterop
//
//  Created by Maksim Ivanov on 22/03/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//
import Foundation

public class Queue<T> : NSObject, Container {
    
    private let list = List<T>()
    
    public func append(_ item: T) {
        list.append(item)
    }
    
    public var count: Int {
        return list.count
    }
    
    public subscript(i: Int) -> T {
        return list[i]
    }
    
    func enqueue(_ item: T) {
        append(item)
    }
    
    func dequeue() -> T {
        let val = list[0]
        
        list.removeFirstElement()
        
        return val
    }
}
