//
//  copy_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Copy and return all values in the sequence that satisfies the predicate.
func copy_if<S : Sequence, L : LogicValue>
    (seq: S, predicate: (S.GeneratorType.Element) -> L) -> [S.GeneratorType.Element]
{
    var values = Array<S.GeneratorType.Element>()
    
    for elem in seq
    {
        if predicate(elem).getLogicValue() == true
        {
            values.append(elem)
        }
    }
    
    return values
}
