//
//  BridgeToGenerics.swift
//  ObjcSwiftInterop
//
//  Created by Maksim Ivanov on 22/03/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import Foundation

@objc public class BridgeToGenerics: NSObject {
    
    @objc public static var stringList: StringContainer {
        let list = List<String>()
        return list
    }
}
