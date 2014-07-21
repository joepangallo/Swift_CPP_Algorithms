//
//  remove_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Return an array for those elements of the sequence that do not satisfy the predicate.
func remove_if<S : Sequence, L : LogicValue>
    ( seq: S, predicate: (S.GeneratorType.Element) -> L) -> [S.GeneratorType.Element]
{
    var values = Array<S.GeneratorType.Element>()
    
    var itr = seq.generate()
    
    while let i = itr.next()
    {
        if predicate(i).getLogicValue() == false
        {
            values.append(i)
        }
    }
    
    return values
}