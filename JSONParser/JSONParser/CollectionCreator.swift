//
//  CollectionCreator.swift
//  JSONParser
//
//  Created by 조재흥 on 18. 11. 13..
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct CollectionCreator {
    private var creator : Creator
    
    init(_ inputCollectionType:Creator) {
        self.creator = inputCollectionType
    }
    
    func create(_ input:String) -> Collection {
        let removedBrakcet = creator.removeBracket(input)
        let extractedData = removedBrakcet.extractData()
        return creator.sortByType(extractedData)
    }
}