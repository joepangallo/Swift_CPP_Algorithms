//
//  any_of.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Determine if any of the elements of the sequence satisfies the predicate.
func any_of< S : Sequence, L : LogicValue where S.GeneratorType.Element : Equatable>
    (seq : S, predicate : (S.GeneratorType.Element) -> L ) -> Bool
{
    for elem in seq
    {
        if predicate(elem).getLogicValue() == true
        {
            return true
        }
    }
    return false
}