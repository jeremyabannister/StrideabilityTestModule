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
    func runStrideabilityTests (_ tests: [StrideabilityTest<Subject>]) throws {
        try tests.forEach { test in
            try test.run()
        }
    }
}
