import XCTest
@testable import Wiring

final class WiringPiTests: XCTestCase {
    func testWiringButton() {
        wiringSetupGpio()
        let btn = Button(forPin: 0)
        for _ in 0...10 {
            if btn.onPress() {
                XCTFail("")
            }
            Thread.sleep(forTimeInterval: 1)
        }
    }
}
