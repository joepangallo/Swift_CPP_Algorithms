//
//  adjacent_file.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Iterates through the sequence to find the first matching
// adjacent values. Returns the matching value.
func adjacent_find<S : Sequence where S.GeneratorType.Element : Comparable >
    ( seq: S) -> S.GeneratorType.Element?
{
    var prev : S.GeneratorType.Element?
    
    var itr = seq.generate()
    
    while let i = itr.next()
    {
        if i == prev
        {
            return i
        }
        
        prev = i
    }
    
    return nil
}