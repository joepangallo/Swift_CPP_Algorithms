//
//  all_of.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Determine if all of the elements of the sequence satisfy the predicate.
func all_of< S : Sequence, L : LogicValue where S.GeneratorType.Element : Equatable>
    (seq : S, predicate : (S.GeneratorType.Element) -> L ) -> Bool
{
    for elem in seq
    {
        if predicate(elem).getLogicValue() == false
        {
            return false
        }
    }
    return true
}