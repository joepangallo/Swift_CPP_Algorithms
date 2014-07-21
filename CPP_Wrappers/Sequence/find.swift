//
//  find.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Find and return the index of the first occurrence of the value in the collection
func find_coll<C : Collection where C.GeneratorType.Element : Equatable>
    (coll: C, value: C.GeneratorType.Element) -> C.IndexType?
{
    return Swift.find(coll,value)
}


// Find and return the index of the first occurrence of the value in the sequence
// based on the prdicate.
func find_seq<L : LogicValue, S : Sequence where S.GeneratorType.Element : Equatable >
    (seq: S, value : S.GeneratorType.Element, predicate : (S.GeneratorType.Element) -> L)  -> Int?
{
   return find_if_index(seq,value,predicate)
}
