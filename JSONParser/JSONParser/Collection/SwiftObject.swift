//
//  SwiftObject.swift
//  JSONParser
//
//  Created by 조재흥 on 18. 11. 13..
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct SwiftObject : Collection {
    private var swiftObject : [String:UsableType]
    private var numberByType : NumberByType
    
    init(_ object:[String:UsableType]) {
        self.swiftObject = object
        let values = Array<UsableType>(object.values)
        self.numberByType = values.numberByType()
    }
    
    func readObject() -> [String:UsableType] {
        return self.swiftObject
    }
    
    func readNumberOfElements() -> Int {
        return self.swiftObject.count
    }
    
    func readNumberOfString() -> Int {
        return numberByType.numberOfString()
    }
    
    func readNumberOfNumber() -> Int {
        return numberByType.numberOfNumber()
    }
    
    func readNumberOfBool() -> Int {
        return numberByType.numberOfBool()
    }
}