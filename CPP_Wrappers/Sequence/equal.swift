//
//  mismatch.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

/// Checks that both sequences contain the same elements.
//  If not equal, return the elements in both sequences that are mismatched. Otherwise, returns nil
func mismatch<S1 : Sequence, S2 : Sequence where S1.GeneratorType.Element == S2.GeneratorType.Element, S1.GeneratorType.Element : Equatable>
    (a1: S1, a2: S2) -> (S1.GeneratorType.Element?,S1.GeneratorType.Element?)
{
    var itr   = Zip2(a1,a2).generate()
    
    while let i = itr.next()
    {
        if i.0 != i.1
        {
            return (i.0,i.1)
        }
    }
    
    return (nil,nil)
}

/// Checks that both sequences contain the same elements.
// Returns true or false
func equal_seq<S1 : Sequence, S2 : Sequence where S1.GeneratorType.Element == S2.GeneratorType.Element, S1.GeneratorType.Element : Equatable>
    (a1: S1, a2: S2) -> Bool
{
    return Swift.equal(a1,a2)
}