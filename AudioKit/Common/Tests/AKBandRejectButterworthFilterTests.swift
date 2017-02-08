//
//  AKBandRejectButterworthFilterTests.swift
//  AudioKitTestSuite
//
//  Created by Aurelius Prochazka on 8/9/16.
//  Copyright © 2016 AudioKit. All rights reserved.
//

import XCTest
import AudioKit

class AKBandRejectButterworthFilterTests: AKTestCase {

    func testDefault() {
        let input = AKOscillator()
        output = AKBandRejectButterworthFilter(input)
        input.start()
        AKTestMD5("15f5a0856974d5fd7e08a2a9304447d5")
    }
}
