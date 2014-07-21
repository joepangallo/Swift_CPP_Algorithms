//
//  find_if_all.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Find and return an array that has all of the values in the sequence that satisfy the predicate.
func find_if_all<S : Sequence , L : LogicValue>
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