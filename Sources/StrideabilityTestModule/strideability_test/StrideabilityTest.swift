//
//  StrideabilityTest.swift
//  
//
//  Created by Jeremy Bannister on 5/20/22.
//

///
public struct StrideabilityTest <Value: Strideable>
    where Value: Testable,
          Value.Stride: Testable {
    
    ///
    private let value1: Value
    private let value2: Value
    private let distance: Value.Stride
    
    ///
    public init
        (_ v1: Value,
         _ v2: Value,
         _ distance: Value.Stride) {
        
        self.value1 = v1
        self.value2 = v2
        self.distance = distance
    }
}

///
public extension StrideabilityTest {
    
    ///
    func run () throws {
        try runTest_distance_to()
        try flipped.runTest_distance_to()
        try runTest_advanced_by()
        try flipped.runTest_advanced_by()
    }
    
    ///
    func runTest_advanced_by () throws {
        try value1
            .advanced(by: distance)
            .assertEqual(to: value2)
    }
    
    ///
    func runTest_distance_to () throws {
        try value1
            .distance(to: value2)
            .assertEqual(to: distance)
    }
    
    ///
    var flipped: Self {
        .init(value2, value1, -distance)
    }
}
