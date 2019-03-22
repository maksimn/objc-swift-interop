//
//  Container.swift
//  ObjcSwiftInterop
//
//  Created by Maksim Ivanov on 22/03/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//
import Foundation

public protocol Container {
    
    associatedtype T
    
    mutating func append(_ item: T)
    
    var count: Int { get }
    
    subscript(_ i: Int) -> T { get }
}
