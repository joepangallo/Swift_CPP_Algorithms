//
//  find_first_of.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation


// Return the first element in seq1 that matches a value in seq2.
func find_first_of<S : Sequence where S.GeneratorType.Element : Comparable>
    (seq1: S, seq2: S) -> S.GeneratorType.Element?
{
    for ele in seq1
    {
        if contains(seq2,ele) == true
        {
            return ele
        }
    }
    
    return nil
}

// Return the first element in seq1 that matches a value in seq2
// based on the predicate.
func find_first_of<L : LogicValue, S : Sequence where S.GeneratorType.Element : Comparable>
    (seq1: S, seq2: S, predicate : (S.GeneratorType.Element) -> L) -> S.GeneratorType.Element?
{
    for ele in seq1
    {
        if contains(seq2,ele) == true
        {
            if predicate(ele).getLogicValue() == true
            {
                return ele
            }
        }
    }
    
    return nil
}