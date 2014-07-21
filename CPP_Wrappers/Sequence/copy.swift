//
//  copy.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Copies the contents of the sequence into an array and returns the array.
func copy_seq<S : Sequence > (seq: S) -> [S.GeneratorType.Element]
{
    var itr   = seq.generate()
    var seq2  = Array<S.GeneratorType.Element>()
    
    while let i = itr.next()
    {
        seq2.append(i)
    }
    
    return seq2
}