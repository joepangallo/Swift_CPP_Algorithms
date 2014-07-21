//
//  count.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Return the count of all the elements in 'seq' that are equal to value.
func count<S : Sequence where S.GeneratorType.Element : Equatable>
    (seq: S, value : S.GeneratorType.Element) -> Int
{
    var count = 0
    
    for elem in seq
    {
        if elem == value
        {
            ++count
        }
    }
    
    return count
}



// Return the count of all of the elments in the collection
func count< C : Collection>( coll : C ) -> C.IndexType.DistanceType
{
    return countElements(coll)
}
