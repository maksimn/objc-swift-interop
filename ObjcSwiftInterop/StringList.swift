//
//  StringListWrapper.swift
//  ObjcSwiftInterop
//
//  Created by Maksim Ivanov on 22/03/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import Foundation

@objc public class StringList : NSObject {
    
    private let list = List<String>()
    
    @objc public func size() -> Int {
        return list.count
    }
    
    @objc public func add(val: String!) {
        list.append(val)
    }

    @objc public func get(i: Int) -> String! {
        return list[i]
    }
}
