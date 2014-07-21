//
//  remove.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation


// Return an array for those elements of the sequence that do not satisfy the predicate.
func remove<S : Sequence where S.GeneratorType.Element : Equatable>
    ( seq: S, value: S.GeneratorType.Element) -> [S.GeneratorType.Element]
{
    var values = Array<S.GeneratorType.Element>()
    
    for elem in seq
    {
       if elem != value
       {
            values.append(elem)
       }
    }
    
    return values
}
