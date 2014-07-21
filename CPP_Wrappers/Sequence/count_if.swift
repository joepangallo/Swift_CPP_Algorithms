//
//  count_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Return the count of all the elements in 'seq' that satisfy the predicate.
func count_if<L : LogicValue, S : Sequence where S.GeneratorType.Element : Equatable>
    (seq: S, predicate : (S.GeneratorType.Element) -> L ) -> Int
{
    var count = 0
    
    for elem in seq
    {
        if predicate(elem).getLogicValue() == true
        {
            ++count
        }
    }
    
    return count
}