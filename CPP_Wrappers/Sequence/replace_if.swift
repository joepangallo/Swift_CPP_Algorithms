//
//  replace_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Replace those elements that satisfy the predicate.
func replace_if<S : Sequence , L : LogicValue where S.GeneratorType.Element : Equatable >
    (  seq: S,  newValue: S.GeneratorType.Element,predicate : (S.GeneratorType.Element) -> L ) ->[S.GeneratorType.Element]
{
    var values = Array<S.GeneratorType.Element>(seq)
    
    for (index,elem) in enumerate(seq)
    {
        if predicate(elem).getLogicValue() == true
        {
            values[index] = newValue
        }
    }
    
    return values
}