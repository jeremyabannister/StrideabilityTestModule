//
//  SingleTypeTestCaseProtocol+extensions_tests.swift
//
//
//  Created by Jeremy Bannister on 5/20/22.
//

///
extension SingleTypeTestCaseProtocol_tests {
    
    ///
    func test_runStrideabilityTests () throws {
        
        ///
        try Int_tests()
            .runStrideabilityTests()
                .test(0, 0, 0)
                .test(0, 1, 1)
                .test(0, 2, 2)
                .test(0, 10, 10)
                .test(-2, -5, -3)
                .test(4, 12, 8)
        
        ///
        expectError {
            try Int_tests()
                .runStrideabilityTests()
                    .test(0, 0, 1)
        }
    }
}
