//
//  CPP_WrappersTests.swift
//  CPP_WrappersTests
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import UIKit
import XCTest

class CPP_WrappersTests: XCTestCase
{
    func testAdjacentOf()
    {
        let a    = [1,2,3,4,4,5]
        
        if let b = adjacent_find(a)
        {
           XCTAssertEqual(b,4)
        }
    }
    
    
    func testAnyOf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 == 5}
        let b    = any_of(a,pred)
        XCTAssertEqual(b,true)
        
        let c     = [1,2,3,4,5]
        let pred2 = {$0 < 0 }
        let d     = any_of(a,pred2)
        XCTAssertEqual(d,false)
    }
    
    func testAllOf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 > 0 }
        let b    = all_of(a,pred)
        XCTAssertEqual(b,true)
        
        let c     = [1,2,3,4,5]
        let pred2 = {$0 < 5 }
        let d     = all_of(a,pred2)
        XCTAssertEqual(d,false)

    }
    
    func testCopy()
    {
        let a    = [1,2,3,4,5]
        let b    =  copy_seq(a)
        XCTAssertEqualObjects(a,b)
    }
    
    func testCopyIf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 > 3}
        let b    =  copy_if(a,pred)
        XCTAssertEqualObjects(b,[ 4,5] )
    }
    
    func testCopyN()
    {
        let a    = [1,2,3,4,5]
        let b    =  copy_n(a,3)
        XCTAssertEqualObjects(b,[ 1,2,3] )
    }
    
    func testCount()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 > 0 }
        let b    = count(a,5)
        XCTAssertEqual(b,1)
        
    }
    
    func testCountIf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 > 0 }
        let c    = count_if( a, pred)
        XCTAssertEqual(c,5)
    }
    
    
    func testFind()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 == 4}
        
        if let b    = find_coll(a,4)
        {
            XCTAssertEqual(b,3)
        }
        
        if let c    = find_seq(a,4,pred)
        {
            XCTAssertEqual(c,3)
        }
        
    }
    
    func testFindIf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 == 4}
        
        if let b    = find_if_index(a,4,pred)
        {
            XCTAssertEqual(b,3)
        }
        
        if let c    = find_if(a,pred)
        {
            XCTAssertEqual(c,4)
        }
        
    }
    
    func testFindFirstOf()
    {
        let a    = [1,2,3,4,5]
        let b    = Array(3...10)
        let pred = {$0 % 2 == 0}
        
        if let c  = find_first_of(a,b)
        {
            XCTAssertEqual(c,3)
        }
        
        if let d  = find_first_of(a,b,pred)
        {
            XCTAssertEqual(d,4)
        }
        
    }
    
    func testFindIfNot()
    {
        let a    = [1,2,3,4,5]
        let pred = { $0 < 4 }
        
        if let b = find_if_not(a,pred)
        {
            XCTAssertEqual(b,4)
        }
       
    }
    
    func testFindIfAll()
    {
        let a    = [1,2,3,4,5]
        let pred = { $0 < 4 }
        let b    = [1,2,3]
        let c    = find_if_all(a,pred)
        XCTAssertEqual(b.count,c.count)
    }

    func testEqual()
    {
        let a    = [1,2,3,4,5]
        let b    = [1,2,3]
        let c    = equal_seq(a,b)
        XCTAssertEqual(c,false)       
    }
    
    func testNoneOf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 > 0 }
        let b    = none_of(a,pred)
        XCTAssertEqual(b,false)
        
        let c     = [1,2,3,4,5]
        let pred2 = {$0 > 5 }
        let d     = none_of(a,pred2)
        XCTAssertEqual(d,true)
        
    }
    
    func testRemove()
    {
        let a    = [1,2,3,4,5]
        let b    = remove(a,5)
        XCTAssertEqual(b.count,4)
    }
    
    func testRemoveIf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 > 3}
        let b    = remove_if(a,pred)
        XCTAssertEqual(b.count,3)
    }
    
    func testReplace()
    {
        let a    = [1,2,3,4,5]
        let b    = replace(a,3,10)
        let c    = [1,2,10,4,5]
        XCTAssertEqualObjects(b,c)
    }
    
    func testReplaceIf()
    {
        let a    = [1,2,3,4,5]
        let pred = {$0 > 3}
        let b    = replace_if(a,10,pred)
        let c    = [1,2,3,10,10]
        XCTAssertEqualObjects(b,c)
    }
    
    func testUnique()
    {
        let a    = [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5]
        let b    = unique(a)
        XCTAssertEqualObjects(b,[1,2,3,4,5])
    }
}
