//
//  AKHighPassButterworthFilterTests.swift
//  AudioKitTestSuite
//
//  Created by Aurelius Prochazka on 8/9/16.
//  Copyright © 2016 AudioKit. All rights reserved.
//

import XCTest
import AudioKit

class AKHighPassButterworthFilterTests: AKTestCase {

    func testDefault() {
        let input = AKOscillator()
        output = AKHighPassButterworthFilter(input)
        input.start()
        AKTestMD5("023c370be0234ef4069253a931789684")
    }
}
