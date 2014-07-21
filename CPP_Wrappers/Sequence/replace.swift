//
//  replace.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Replace oldValue with newValue and return an array containg the new values, plus
// the values that did not equal the old value.
func replace<S : Sequence where S.GeneratorType.Element : Equatable >
    (  seq: S, oldValue : S.GeneratorType.Element,  newValue: S.GeneratorType.Element) -> [S.GeneratorType.Element]
{
    var values = Array<S.GeneratorType.Element>(seq)
    
    for (index,elem) in enumerate(seq)
    {
        if( values[index] == oldValue )
        {
            values[index] = newValue
        }
    }
    
    return values
}