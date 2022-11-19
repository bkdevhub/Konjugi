//
//  gameManagerTests.swift
//  KonjugiTests
//
//  Created by Björn Viehmann on 18.05.22.
//

import XCTest
@testable import Konjugi

class gameManagerTests: XCTestCase {

    func test_init_withoutConjugations_throwsError() {

        XCTAssertThrowsError(gameManager())
    
    }
        
    //private func returnDataServiceMock() -> ConjugationDataService {
        // TODO: Mock in XCTest
    //}
}
