//
//  unique.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Remove all duplicate adjacent values.
func unique<S : Sequence where S.GeneratorType.Element : Comparable >
    ( seq: S) -> [S.GeneratorType.Element]
{
    var values = Array<S.GeneratorType.Element>()
    var prev   : S.GeneratorType.Element?
    
    var itr = seq.generate()
    
    while let i = itr.next()
    {
        if i != prev
        {
            values.append(i)
        }
        
        prev = i
    }
    
    return values
}