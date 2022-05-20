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
            .runStrideabilityTests([
                .init(0, 0, 0),
                .init(0, 1, 1),
                .init(0, 2, 2),
                .init(0, 10, 10),
                .init(-2, -5, -3),
                .init(4, 12, 8)
            ])
        
        ///
        expectError {
            try Int_tests()
                .runStrideabilityTests([
                    .init(0, 0, 1)
                ])
        }
    }
}
