//
//  find_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Find and return the first value in the sequence that satisfies the predicate.
func find_if<S : Sequence, L : LogicValue>
    (seq: S, predicate: (S.GeneratorType.Element) -> L) -> S.GeneratorType.Element?
{
    for elem in seq
    {
        if predicate(elem).getLogicValue() == true
        {
            return elem
        }
    }
    
    return nil
}

// Find and return the index of the first occurrence of the value in the sequence
// based on the prdicate.
func find_if_index<L : LogicValue, S : Sequence where S.GeneratorType.Element : Equatable >
    (seq: S, value : S.GeneratorType.Element, predicate : (S.GeneratorType.Element) -> L)  -> Int?
{
    var val : Int?
    
    for (ind,elem) in enumerate(seq)
    {
        if predicate(elem).getLogicValue() == true
        {
            return ind
        }
    }
    
    return val
}