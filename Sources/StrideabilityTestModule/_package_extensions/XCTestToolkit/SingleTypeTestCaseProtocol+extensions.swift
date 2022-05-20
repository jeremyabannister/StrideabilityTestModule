//
//  SingleTypeTestCaseProtocol+extensions.swift
//  
//
//  Created by Jeremy Bannister on 5/20/22.
//

///
public extension SingleTypeTestCaseProtocol
    where Subject: Strideable,
          Subject: Testable,
          Subject.Stride: Testable {
    
    ///
    func runStrideabilityTests () -> StrideabilityTestExecutor<Subject> {
        StrideabilityTestExecutor()
    }
}

///
public struct StrideabilityTestExecutor <Subject: Strideable>
    where Subject: Testable,
          Subject.Stride: Testable {
    
    ///
    @discardableResult
    public func test
        (_ value1: Subject,
         _ value2: Subject,
         _ distance: Subject.Stride)
    throws -> Self {
        
        ///
        try StrideabilityTest(
            value1,
            value2,
            distance
        )
            .run()
        
        ///
        return self
    }
}
