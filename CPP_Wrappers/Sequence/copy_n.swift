//
//  copy_n.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Copy and return the first 'n' values in the sequence.
func copy_n<S : Sequence >(seq : S, count : Int ) -> [S.GeneratorType.Element]
{
    var itr     = seq.generate()
    var arr     = Array<S.GeneratorType.Element>()
    var counter = 0
    
    while let i = itr.next()
    {
        if( ++counter <= count)
        {
            arr.append(i)
        }
    }
    
    return arr
}